extends Label

var loan_pay = 7000

# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "Left to be paid: " + str(loan_pay)


func _on_loan_buy_pressed():
	self.show()


func _on_turn_counter_loan_pay():
	loan_pay -= 500
