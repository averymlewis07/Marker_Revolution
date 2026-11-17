extends TextureRect

@export var color_options = [
	preload("res://art/Marker Cap - Black.png"),
	preload("res://art/Marker Cap - Blue.png"),
	preload("res://art/Marker Cap - Green.png"),
	preload("res://art/Marker Cap - Red.png")
]

func _ready() -> void:
	var myTexture := AtlasTexture.new()
	myTexture.atlas = color_options.pick_random()
	myTexture.region = Rect2(784, 298, 200, 265)
	texture = myTexture
