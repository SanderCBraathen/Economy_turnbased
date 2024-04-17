extends Label

var turn_amount = 25

func _ready():
	pass

func _process(delta):
	self.text = "Turns Left: " + str(turn_amount)
	if turn_amount == 0:
		emit_signal("focus_entered")


 
func _on_lowrisk_stock_pressed():
	turn_amount -= 1


func _on_medium_stock_pressed():
	turn_amount -= 1


func _on_high_stock_pressed():
	turn_amount -= 1
