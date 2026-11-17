extends TextureRect

@export var color_options = [
	
	preload("res://art/Marker Body - Black.png"),
	preload("res://art/Marker Body - Blue.png"),
	preload("res://art/Marker Body - Green.png"),
	preload("res://art/Marker Body - Red.png")
]

func _ready() -> void:
	var random_int = random_choice()
	GlobalScript.emit_signal("storeTargerBody", random_int)
	var testImage: Image = color_options[random_int].get_image()
	testImage.resize(450, 600, Image.INTERPOLATE_BILINEAR)
	var newtexture: ImageTexture = ImageTexture.create_from_image(testImage)
	texture = newtexture


func random_choice() -> int:
	var random_int = randi_range(0, 3)
	return random_int 
