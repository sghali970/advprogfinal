extends Control

#updates number of lives
func _process(delta):
	$Label.text = "Lives: " + str(Globals.lives)
