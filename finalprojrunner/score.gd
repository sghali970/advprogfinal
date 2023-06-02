extends Control

var score = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score += delta
	$Label.text = str(int(score))
