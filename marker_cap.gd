extends Sprite2D


@export var color_options = [
	
	preload("res://art/Marker Cap - Black.png"),
	preload("res://art/Marker Cap - Blue.png"),
	preload("res://art/Marker Cap - Green.png"),
	preload("res://art/Marker Cap - Red.png")
]

func _ready() -> void:
	texture = color_options.pick_random()
