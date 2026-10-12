extends SceneTree
## Headless quality gate (cloud/CI): main scene runs, every script and scene
## loads, then every res://tests/test_*.gd case passes. Prints SMOKE_PASS.

const SKIP_DIRS: Array[String] = ["res://.godot", "res://addons"]
const TEST_DIR := "res://tests"

var _errors: Array[String] = []

func _initialize() -> void:
	_run.call_deferred()

func _run() -> void:
	await _check_main_scene()
	_check_loadable("res://")
	var count := await _run_tests()
	if not _errors.is_empty():
		for message: String in _errors:
			push_error(message)
		quit(1)
		return
	print("TESTS_PASS: %d" % count)
	print("SMOKE_PASS")
	quit(0)

func _check_main_scene() -> void:
	var path := str(ProjectSettings.get_setting("application/run/main_scene", ""))
	var scene := load(path) as PackedScene if ResourceLoader.exists(path) else null
	if scene == null:
		_errors.append("Main scene did not load: " + path)
		return
	var instance := scene.instantiate()
	root.add_child(instance)
	await process_frame
	await process_frame
	instance.queue_free()
	await process_frame

## Parses every project script and loads every scene without running them.
func _check_loadable(dir_path: String) -> void:
	if dir_path in SKIP_DIRS:
		return
	var dir := DirAccess.open(dir_path)
	if dir == null:
		_errors.append("Cannot open " + dir_path)
		return
	for sub: String in dir.get_directories():
		_check_loadable(dir_path.path_join(sub))
	for file: String in dir.get_files():
		var path := dir_path.path_join(file)
		if file.ends_with(".gd"):
			var loaded := load(path) as Script
			if loaded == null or not loaded.can_instantiate():
				_errors.append("Script failed to compile: " + path)
		elif file.ends_with(".tscn") and load(path) == null:
			_errors.append("Scene failed to load: " + path)

func _run_tests() -> int:
	var dir := DirAccess.open(TEST_DIR)
	if dir == null:
		return 0
	var files := Array(dir.get_files()).filter(
		func(f: String) -> bool: return f.begins_with("test_") and f.ends_with(".gd"))
	files.sort()
	var count := 0
	for file: String in files:
		var path := TEST_DIR.path_join(file)
		var loaded := load(path) as Script
		if loaded == null or not loaded.can_instantiate():
			_errors.append("Test script failed to compile: " + path)
			continue
		for method: Dictionary in loaded.get_script_method_list():
			var method_name := str(method["name"])
			if not method_name.begins_with("test_"):
				continue
			var test_case: Object = loaded.new()
			test_case.set("tree", self)
			await test_case.call(method_name)
			count += 1
			for failure: String in test_case.get("failures"):
				_errors.append("%s::%s: %s" % [file, method_name, failure])
	return count
