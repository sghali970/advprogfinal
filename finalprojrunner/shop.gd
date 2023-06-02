extends Node2D

func _on_button_pressed():
	get_tree().change_scene_to_file("res://equip1.tscn")
	
func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://equip2.tscn")
	
func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://equip3.tscn")

func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://equip4.tscn")


func _on_button_5_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
