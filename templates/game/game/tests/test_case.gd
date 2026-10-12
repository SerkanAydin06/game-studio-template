extends RefCounted
## Base for automated tests. A test file is res://tests/test_<topic>.gd:
##   extends "res://tests/test_case.gd"
##   func test_something() -> void: check_eq(2 + 2, 4, "math")
## Each test_* method gets a fresh instance; it may await (e.g. tree.process_frame).
## smoke_test.gd discovers and runs these in cloud CI.

var tree: SceneTree
var failures: Array[String] = []

func check(condition: bool, message: String) -> void:
	if not condition:
		failures.append(message)

func check_eq(actual: Variant, expected: Variant, message: String = "") -> void:
	if typeof(actual) != typeof(expected) or actual != expected:
		failures.append("%s expected %s, got %s" % [message, var_to_str(expected), var_to_str(actual)])

## Instantiates a scene under the root and waits one frame; caller frees it.
func spawn(scene_path: String) -> Node:
	var scene := load(scene_path) as PackedScene
	check(scene != null, "scene did not load: " + scene_path)
	if scene == null:
		return null
	var node := scene.instantiate()
	tree.root.add_child(node)
	await tree.process_frame
	return node
