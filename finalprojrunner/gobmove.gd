extends Area2D

@export var move_speed : float = 55.0
@export var move_direction : Vector2

var start_position : Vector2
var final_position : Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.flip_h = true
	start_position = global_position
	final_position = start_position + move_direction


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position = global_position.move_toward(final_position, move_speed*delta)
	if global_position == final_position:
		if global_position == start_position:
			$AnimatedSprite2D.flip_h = true
			final_position = start_position + move_direction
		else:
			$AnimatedSprite2D.flip_h = false
			final_position = start_position


func _on_body_entered(body):
	if body.is_in_group("Player"):
		Globals.lives -= 1
		self.queue_free()
