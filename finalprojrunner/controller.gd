extends Node2D

var counter = 0
var loc = 860
var sceneA = preload("res://sceneA.tscn")
var sceneB = preload("res://sceneB.tscn")
var sceneC = preload("res://sceneC.tscn")
var sceneD = preload("res://sceneD.tscn")
var SCENES = [sceneA, sceneB, sceneC, sceneD]

var spawn_pos = global_position
var gw = 860
var time = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
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
	


func _on_area_2d_body_entered(body):
	get_tree().change_scene_to_file("res://dead.tscn")
