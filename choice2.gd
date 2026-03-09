extends Control
var choiced = 0
func _ready():
	controller()
	pass
func option1():
	movie.opt =1
func option2():
	movie.opt = 2
func _on_VideoPlayer_finished():
	choiced +=1
	if choiced == 1:
		if movie.opt == 1:
			myhide()
			$VideoStreamPlayer.stream = preload("res://videos/final1.ogv")
			$VideoStreamPlayer.play()
		elif movie.opt == 2:
			myhide()
			$VideoStreamPlayer.stream = preload("res://videos/final2.ogv")
			$VideoStreamPlayer.play()
	elif choiced == 2:
		get_tree().change_scene_to_file("res://menu.tscn")
		pass
func controller():
	var button_to_focus = get_node("Button")
	if button_to_focus:
		button_to_focus.grab_focus()
func myhide():
	$Button.visible = false
	$Button2.visible = false
	$load.visible = false
	$ColorRect2.visible = false
