extends Sprite2D

@export var color_options = [
	
	preload("res://art/Marker Ink - Black.png"),
	preload("res://art/Marker Ink - Blue.png")
	
]

func _ready() -> void:
	texture = color_options.pick_random()
	
	
