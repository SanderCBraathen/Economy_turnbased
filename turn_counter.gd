extends Label

var turn_amount = 25

var loan_payback = 7000

@onready var payback_button = $"../Loan/payback"

var loan = false

signal out_of_turns
signal loan_pay

func _ready():
	pass

func _process(delta):
	$".".text = "Turns Left: " + str(turn_amount)
	if turn_amount == 0:
		emit_signal("out_of_turns")
	

func _end_turn():
	print("endturn")
	turn_amount -= 1
	if loan == true && loan_payback > 0:
		print("paying loan")
		emit_signal("loan_pay")
		MoneyCounter.money_amount -= 500
		loan_payback -= 500
	


func _on_lowrisk_stock_pressed():
	_end_turn()

func _on_medium_stock_pressed():
	_end_turn()

func _on_high_stock_pressed():
	_end_turn()


func _on_loan_buy_pressed():
	payback_button.show()
	loan = true

