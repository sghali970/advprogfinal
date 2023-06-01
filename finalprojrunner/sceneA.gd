extends Node2D

var sceneB = preload("res://sceneB.tscn")
var spawn_pos = global_position
var gw = 860
var time = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawn_scene():
	var spawn_scene_instance = sceneB.instantiate()
	
	add_child(spawn_scene_instance)
	#spawn_scene_instance.global_positon.x=spawn_position.x
	spawn_scene_instance.global_position.x = 860
	
	spawn_pos.x += gw






func _on_area_2d_body_entered(body):
	spawn_scene()
