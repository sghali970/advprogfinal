extends CharacterBody2D

enum State {IDLE, JUMP, ATTACK, DIE, DOUBLEJUMP}
const SPEED = 60.0
const JUMP_VELOCITY = -400.0

var curstate = State.IDLE
var state_time = 0.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	switch_to(State.IDLE)

func switch_to(new_state: State):
	curstate = new_state
	state_time = 0.0
	if new_state == State.IDLE:
		$AnimatedSprite2D.frame = 0
		$AnimatedSprite2D.play("move")
	elif new_state == State.ATTACK:
		$AnimatedSprite2D.frame = 0
		$AnimatedSprite2D.play("attack")
	elif new_state == State.DIE:
		get_tree().change_scene_to_file("res://dead.tscn")
		

func _physics_process(delta):
	self.modulate = Globals.mod
	#attack input
	if Input.is_action_just_pressed("attack"):
		$AnimatedSprite2D.play("attack")
		$AnimationPlayer.play("collision_change")
	#continuosly changing velocity and incrementally increasing it
	velocity.x += SPEED*delta
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():	
		velocity.y = JUMP_VELOCITY
	move_and_slide()


func _on_area_2d_body_entered(body):
	if body.is_in_group("Powerup"):
		body.queue_free()
	


func _on_area_2d_area_entered(area):
	if area.is_in_group("Hit"):
		area.queue_free()
	


