extends Node2D

var sceneA = preload("res://sceneA.tscn")
var spawn_pos = global_position
var gw = 860
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func spawn_scene():
	var spawn_scene_instance = sceneA.instantiate()
	
	add_child(spawn_scene_instance)
	spawn_scene_instance.global_position.x = 1720
	
	spawn_pos.x += gw



func _on_area_2d_body_entered(body):
	spawn_scene()
