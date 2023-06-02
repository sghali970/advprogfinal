extends Node2D

#adding one to global variable each time player collides with coin
func _on_area_2d_body_entered(body):
	Globals.coins_num += 1 * Globals.coinmultiplier
	queue_free()
