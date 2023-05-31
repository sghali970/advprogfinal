extends Node2D


var test1price = 100
var test2price = 250


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _on_button_pressed():
	if Globals.coins_num >= test1price and Globals.item1count == 0:
		buy(test1price)
		Globals.item1count += 1
		get_tree().change_scene_to_file("res://equip1.tscn")
	elif Globals.item1count > 0:
		print('test')
		get_tree().change_scene_to_file("res://equip1.tscn")


func _on_button_2_pressed():
	pass # Replace with function body.
	
func buy(price):
	Globals.coins_num -= price
	print(Globals.coins_num)
