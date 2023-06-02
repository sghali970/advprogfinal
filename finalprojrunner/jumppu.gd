extends Node2D

func _on_area_2d_body_entered(body):
	Globals.lives += 3
	queue_free()
