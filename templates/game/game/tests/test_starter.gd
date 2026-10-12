extends "res://tests/test_case.gd"
## Starter example. Replace with real gameplay tests when main.tscn changes.

func test_status_label_shows_ready() -> void:
	var game: Node = await spawn("res://main.tscn")
	var status := game.get_node_or_null("Status") as Label if game else null
	check(status != null and status.text.begins_with("Project ready"), "starter status label")
	if game:
		game.queue_free()
