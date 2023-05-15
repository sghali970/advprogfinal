extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func _physics_process(delta):
	if Input.is_action_just_pressed("attack"):
		$AnimatedSprite2D.play("attack")
		$AnimationPlayer.play("collision_change")
	#velocity.x += SPEED*delta
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta


	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	

	move_and_slide()


func _on_area_2d_body_entered(body):
	if body.is_in_group("Powerup"):
		body.queue_free()
	


func _on_area_2d_area_entered(area):
	if area.is_in_group("Hit"):
		area.queue_free()
	
