extends Area2D

#when the player hits the death area collision, send them to death scene menu
func _on_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://dead.tscn")
