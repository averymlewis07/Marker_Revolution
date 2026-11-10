extends TextureRect

@export var color_options = [
	
	preload("res://art/Marker Body - Black.png"),
	preload("res://art/Marker Body - Blue.png"),
	preload("res://art/Marker Body - Green.png"),
	preload("res://art/Marker Body - Red.png")
]

func _ready() -> void:
	var testImage: Image = color_options.pick_random().get_image()
	testImage.resize(450, 600, Image.INTERPOLATE_BILINEAR)
	var newtexture: ImageTexture = ImageTexture.create_from_image(testImage)
	texture = newtexture
