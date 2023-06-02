extends Node2D

#counter for spawning
var counter = 0
#changing location by this amount
var loc = 950
var sceneA = preload("res://sceneA.tscn")
var sceneB = preload("res://sceneB.tscn")
var sceneC = preload("res://sceneC.tscn")
var sceneD = preload("res://sceneD.tscn")
var SCENES = [sceneA, sceneB, sceneC, sceneD]

var spawn_pos = global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#start spawning once character is past 80 pixels and add every 830 pixels
	if $CharacterBody2D.position.x > 80+counter:
		spawn_scene()
		counter += 830
		
func spawn_scene():
	#spawn a scene and add 950 to the x position for each scene
	var spawn_scene_instance = SCENES.pick_random().instantiate()
	var holder = spawn_scene_instance 
	add_child(spawn_scene_instance)
	#spawn_scene_instance.global_positon.x=spawn_position.x
	spawn_scene_instance.global_position.y = 0
	spawn_scene_instance.global_position.x = loc
	loc+= 830
	


func _on_area_2d_body_entered(body):
	get_tree().change_scene_to_file("res://dead.tscn")
