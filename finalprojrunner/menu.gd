extends Control

func _ready():
	Globals.lives = 3

#moving player to different scenes
func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://level_1.tscn")


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://options.tscn")


func _on_shop_button_pressed():
	print(Globals.coins_num)
	get_tree().change_scene_to_file("res://shop.tscn")
