extends Control

func _ready():
	controller()
	pass 

func finish():
	get_tree().change_scene_to_file("res://choice1.tscn")
	pass 

func controller():
	var button_to_focus = get_node("Button")
	if button_to_focus:
		button_to_focus.grab_focus()

