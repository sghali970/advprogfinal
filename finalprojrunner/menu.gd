extends Control


#moving player to different scenes
func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://level_1.tscn")


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://options.tscn")
