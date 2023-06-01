extends Node2D

var sceneB = preload("res://sceneB.tscn")

var spawn_position = global_position
var gw = 80

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawn_scene():
	var spawn_scene_instance = sceneB.instantiate()
	add_child(spawn_scene_instance)
	spawn_scene_instance.global_positon.x=spawn_position.x
	
	spawn_position.x += gw
