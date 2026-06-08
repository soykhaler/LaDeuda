extends Control
func _ready():
	# Wavedash: opt into Online Services. No-ops off the web build.
	WavedashSDK.init({"debug": true})
func _on_VideoPlayer_finished():
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://menu.tscn")
