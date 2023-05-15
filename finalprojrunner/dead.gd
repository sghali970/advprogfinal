extends Control

#button for moving to menu scene
func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
