extends Node2D

signal money_amount(value) 

@onready var label = $Label
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	


func _on_lowrisk_stock_pressed():
	var random_generator = RandomNumberGenerator.new()
	var random_number = random_generator.randi_range(1, 2)

