extends Node2D

const gs = preload("res://scenetest3.tscn")
const gw = 860
var spawnpos = global_position

var player = get_tree().get_nodes_in_group("play")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if spawnpos.distance_to(player.global_position) < 300:
		spawn_ground()
		
	pass
	
func spawn_ground():
	var spawn_ground_instance = gs.instantiate()
	add_child(spawn_ground_instance)
	spawn_ground_instance.global_position.x =860
	spawnpos.x = spawnpos.x + gw
