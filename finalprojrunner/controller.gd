extends Node2D

var counter = 0
var loc = 830
var sceneA = preload("res://sceneA.tscn")
var sceneB = preload("res://sceneB.tscn")
var SCENES = [sceneA, sceneB]

var spawn_pos = global_position
var gw = 860
var time = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print($CharacterBody2D.position.x)
	if $CharacterBody2D.position.x > 80+counter:
		spawn_scene()
		counter += 830
		
func spawn_scene():
	
	var spawn_scene_instance = SCENES.pick_random().instantiate()
	var holder = spawn_scene_instance 
	add_child(spawn_scene_instance)
	#spawn_scene_instance.global_positon.x=spawn_position.x
	spawn_scene_instance.global_position.y = 0
	spawn_scene_instance.global_position.x = loc
	loc+= 830
	
