extends Node2D

var item3price = 15
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	if Globals.item3count == 1:
		Globals.mod = 'f9ee00'


func _on_button_2_pressed():
	Globals.mod = '00d081'


func _on_button_3_pressed():
	if Globals.coins_num >= item3price and Globals.item3count == 0:
		buy(item3price)
		Globals.item3count = 1


func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://shop.tscn")
	
func buy(price):
	Globals.coins_num -= price
	
