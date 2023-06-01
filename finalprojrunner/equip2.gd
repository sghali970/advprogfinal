extends Node2D

var item2price = 50

func _on_button_pressed():
	get_tree().change_scene_to_file("res://shop.tscn")


func _on_button_2_pressed():
	if Globals.coins_num >= item2price and Globals.item2count == 0:
		buy(item2price)
		Globals.item2count = 1
		
func buy(price):
	Globals.coins_num -= price
	print(Globals.coins_num)


func _on_button_3_pressed():
	if Globals.item2count == 1:
		Globals.mod = '5159e5'

func _on_button_4_pressed():
	Globals.mod = '00d081'
