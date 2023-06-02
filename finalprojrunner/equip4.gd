extends Node2D

var item4price = 50

func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://shop.tscn")


func _on_button_2_pressed():
	Globals.mod = '00d081'


func _on_button_3_pressed():
	if Globals.coins_num >= item4price and Globals.item4count == 0:
		buy(item4price)
		Globals.item4count = 1
		
func buy(price):
	Globals.coins_num -= price
	


func _on_button_pressed():
	if Globals.item4count == 1:
		Globals.mod = 'cd96e17c'
