extends SceneTree

func _initialize() -> void:
    _run.call_deferred()

func _run() -> void:
    var scene := load("res://main.tscn") as PackedScene
    if scene == null:
        push_error("Main scene did not load")
        quit(1)
        return
    var instance := scene.instantiate()
    root.add_child(instance)
    await process_frame
    var status := instance.get_node_or_null("Status") as Label
    if status == null or not status.text.begins_with("Development pipeline ready"):
        push_error("Expected status label missing")
        instance.queue_free()
        await process_frame
        quit(1)
        return
    instance.queue_free()
    await process_frame
    print("SMOKE_PASS")
    quit(0)
