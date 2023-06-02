extends Node2D

var spawn_pos = global_position
var gw = 860
var time = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $CharacterBody2D.position.x > 800:
		queue_free()
	


