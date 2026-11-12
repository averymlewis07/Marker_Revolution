extends Sprite2D

signal choose_random(choice: int)

@export var color_options = [
	
	preload("res://art/Marker Cap - Black.png"),
	preload("res://art/Marker Cap - Blue.png"),
	preload("res://art/Marker Cap - Green.png"),
	preload("res://art/Marker Cap - Red.png")
]

func _ready() -> void:
	var random_int = random_choice()
	texture = color_options[random_int]
	
	

func random_choice() -> int:
	var random_int = randi_range(0, 3)
	choose_random.emit(random_int)
	return random_int 
