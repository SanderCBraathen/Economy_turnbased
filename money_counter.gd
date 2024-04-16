extends Label

var money_amount = 1000

func _ready():
	pass



func _process(delta):
	self.text = str(money_amount) + " $"
	pass


