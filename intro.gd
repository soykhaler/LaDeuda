extends Control
func _ready():
	pass 
func _on_VideoPlayer_finished():
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://menu.tscn")
