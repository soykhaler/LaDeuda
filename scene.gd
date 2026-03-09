extends Control
func _ready():
	controller()
	pass
func option1():
	movie.opt =1
func option2():
	movie.opt = 2
func _on_VideoPlayer_finished():
	if movie.opt == 1:
		#$VideoStreamPlayer.stream = preload("res://izquierda.ogv")
		$VideoStreamPlayer.play()
	elif movie.opt == 2:
		#$VideoStreamPlayer.stream = preload("res://derecha.ogv")
		$VideoStreamPlayer.play()
func controller():
	var button_to_focus = get_node("Button")
	if button_to_focus:
		button_to_focus.grab_focus()
