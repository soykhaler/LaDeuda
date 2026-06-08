extends Control
func _ready():
	controller()
	# No "Salir"/quit on web (Wavedash) builds — you can't exit a browser-tab game.
	if OS.has_feature("web"):
		$Button2.hide()
func _on_Button_pressed():
	$fadeout.play("fadeout")
	await get_tree().create_timer(1).timeout
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://scene1.tscn")
func _on_Button2_pressed():
	$fadeout.play("fadeout")
	await get_tree().create_timer(1).timeout
	get_tree().quit()
func controller():
	var button_to_focus = get_node("Button")
	if button_to_focus:
		button_to_focus.grab_focus()
func _on_VideoPlayer_finished():
	$VideoStreamPlayer.play()
