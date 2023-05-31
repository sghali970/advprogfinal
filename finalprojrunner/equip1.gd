extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Globals.mod = 'f29085'
	get_tree().change_scene_to_file("res://level_1.tscn")


func _on_button_2_pressed():
	Globals.mod = '00d081'
	get_tree().change_scene_to_file("res://level_1.tscn")
