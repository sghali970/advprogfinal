extends Area2D


#when the player wins and hits the flag, send them to win screen
func _on_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://win.tscn")
