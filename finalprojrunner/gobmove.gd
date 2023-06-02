extends Area2D

@export var move_speed : float = 55.0
@export var move_direction : Vector2

var start_position : Vector2
var final_position : Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	#stating the start position as well as the final position
	#$AnimatedSprite2D.flip_h = true
	start_position = global_position
	final_position = start_position + move_direction


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#making the enemies move towards the final position
	global_position = global_position.move_toward(final_position, move_speed*delta)
	#once they have reached the final position make the new final position the original start position
	if global_position == final_position:
		if global_position == start_position:
			$AnimatedSprite2D.flip_h = true
			final_position = start_position + move_direction
		else:
			$AnimatedSprite2D.flip_h = false
			final_position = start_position


func _on_body_entered(body):
	#subtract a life if player hits enemy
	if body.is_in_group("Player"):
		Globals.lives -= 1
		self.queue_free()
	if Globals.lives == 0:
		get_tree().change_scene_to_file("res://dead.tscn")
		
func get_hit():
	queue_free()	
