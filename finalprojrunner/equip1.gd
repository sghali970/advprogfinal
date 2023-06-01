extends Node2D

var item1price = 100

func _on_button_pressed():
	if Globals.item1count == 1:
		Globals.mod = 'f29085'

func _on_button_2_pressed():
	Globals.mod = '00d081'

func _on_button_3_pressed():
	if Globals.coins_num >= item1price and Globals.item1count == 0:
		buy(item1price)
		Globals.item1count = 1
		
func buy(price):
	Globals.coins_num -= price
	print(Globals.coins_num)

func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://shop.tscn")
