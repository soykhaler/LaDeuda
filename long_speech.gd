extends Control
func _ready():
	pass 
func _on_VideoPlayer_finished():
	get_tree().change_scene_to_file("res://choice2.tscn")
	pass # Replace with function body.
