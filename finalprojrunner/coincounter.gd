extends Control

#changing text each time coin is collected
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "Coins: " + str(Globals.coins_num)
