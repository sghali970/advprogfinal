extends Node2D

var TimerSec = 3
var status = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(Globals.jump_num)
	if Globals.jump_num == 1:
		print('work')
		if TimerSec > 0:
			TimerSec -= delta
			Globals.JUMP_VELOCITY = -60.0
		

func _on_area_2d_body_entered(body):
	Globals.jump_num = 1
	queue_free()
	

