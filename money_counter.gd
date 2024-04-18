extends Label

var money_amount = 1000
var money_moved := false

func _ready():
	pass

func _process(delta):
	self.text = str(money_amount) + " $"


func _on_turn_counter_focus_entered():
	#if not money_moved:
		#var new_position = self.position + Vector2(750, 450)
		#self.position = new_position
		#money_moved = true
	
	
	self.text = "Final Amount: " + str(money_amount) + " "

# Add a retry button!!


func _on_lowrisk_stock_pressed():
	var random_generator = RandomNumberGenerator.new()
	var random_number = random_generator.randi_range(1, 10)
	money_amount -= 250
	var random_generator_ = RandomNumberGenerator.new()
	var random_number_ = random_generator_.randi_range(250, 450)
	
	if random_number <= 9:
		money_amount += random_number_


func _on_medium_stock_pressed():
	var random_generator = RandomNumberGenerator.new()
	var random_number = random_generator.randi_range(1, 2)
	money_amount -= 500
	var random_generator_ = RandomNumberGenerator.new()
	var random_number_ = random_generator_.randi_range(500, 1500)
	
	if random_number == 1:
		money_amount += random_number_


func _on_high_stock_pressed():
	var random_generator = RandomNumberGenerator.new()
	var random_number = random_generator.randi_range(1, 20)
	money_amount -= 1000
	var random_generator_ = RandomNumberGenerator.new()
	var random_number_ = random_generator_.randi_range(3000, 50000)
	
	if random_number >= 19:
		money_amount += random_number_
		

