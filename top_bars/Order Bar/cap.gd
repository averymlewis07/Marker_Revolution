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
	#
	#%Cap.texture = color_options.pick_random()
	#
	#var testImage: Image = color_options.pick_random().get_image()
	#testImage.resize(450, 600, Image.INTERPOLATE_BILINEAR)
	#var newtexture: ImageTexture = ImageTexture.create_from_image(testImage)
	#texture = newtexture
	#var random_int = random_choice()
	#GlobalScript.emit_signal("storeRandomCap", random_int)
	#texture = color_options[random_int]
