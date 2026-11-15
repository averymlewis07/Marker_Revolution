extends Sprite2D



@export var color_options = [
	
	preload("res://art/Marker Cap - Black.png"),
	preload("res://art/Marker Cap - Blue.png"),
	preload("res://art/Marker Cap - Green.png"),
	preload("res://art/Marker Cap - Red.png")
]

func _ready() -> void:
	var random_int = random_choice()
	GlobalScript.emit_signal("storeRandomCap", random_int)
	texture = color_options[random_int]
	
	

func random_choice() -> int:
	var random_int = randi_range(0, 3)
	return random_int 
