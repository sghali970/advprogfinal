extends Node2D
		

func _on_area_2d_body_entered(body):
	Globals.JUMP_VELOCITY = -430.0
	queue_free()
	

