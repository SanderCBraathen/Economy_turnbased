extends Label

var money_amount = 500
var money_moved := false
var loan_amount = 5000

var payback = loan_amount / 25

func _ready():
	pass

func _process(delta):
	self.text = str(money_amount) + " $"
	


# This function is called when a certain UI element gains focus. It updates the text of that element to display the final money amount.
func _on_turn_counter_focus_entered():
	#if not money_moved:
		#var new_position = self.position + Vector2(750, 450)
		#self.position = new_position
		#money_moved = true
	
	
	self.text = "Final Amount: " + str(money_amount) + " "

# Add a retry button!!

# This function is called when the low-risk stock button is pressed. It simulates a stock transaction and updates the money amount accordingly.
func _on_lowrisk_stock_pressed():
	var random_generator = RandomNumberGenerator.new()
	var random_number = random_generator.randi_range(1, 10)
	money_amount -= 250
	var random_generator_ = RandomNumberGenerator.new()
	var random_number_ = random_generator_.randi_range(250, 450)
	
	if random_number <= 9:
		money_amount += random_number_

# This function is called when the medium-risk stock button is pressed. It simulates a stock transaction and updates the money amount accordingly.
func _on_medium_stock_pressed():
	var random_generator = RandomNumberGenerator.new()
	var random_number = random_generator.randi_range(1, 2)
	money_amount -= 500
	var random_generator_ = RandomNumberGenerator.new()
	var random_number_ = random_generator_.randi_range(500, 1500)
	
	if random_number == 1:
		money_amount += random_number_

# This function is called when the high-risk stock button is pressed. It simulates a stock transaction and updates the money amount accordingly.
func _on_high_stock_pressed():
	var random_generator = RandomNumberGenerator.new()
	var random_number = random_generator.randi_range(1, 20)
	money_amount -= 1000
	var random_generator_ = RandomNumberGenerator.new()
	var random_number_ = random_generator_.randi_range(1000, 20000)
	
	if random_number >= 19:
		money_amount += random_number_
		


# This function is called when the loan buy button is pressed. It adds a fixed amount (loan) to the money amount.
func _on_loan_buy_pressed():
	money_amount += 5000


func _on_payback_focus_entered():
	pass # Replace with function body.
	

