extends Node2D

func _on_area_2d_body_entered(body):
	Globals.coinmultiplier += 1
	queue_free()
