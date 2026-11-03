extends Sprite2D

@export var color_options = [
	
	preload("res://art/Marker Ink - Black.png"),
	preload("res://art/Marker Ink - Blue.png"),
	preload("res://art/Marker Ink - Green.png"),
	preload("res://art/Marker Ink - Red.png")
	
]

func _ready() -> void:
	var testImage: Image = color_options.pick_random().get_image()
	testImage.resize(600, 800, Image.INTERPOLATE_BILINEAR)
	var newtexture: ImageTexture = ImageTexture.create_from_image(testImage)
	texture = newtexture
	
