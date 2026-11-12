extends Sprite2D

signal choose_random(choice: int)

@export var color_options = [
	
	preload("res://art/Marker Ink - Black.png"),
	preload("res://art/Marker Ink - Blue.png"),
	preload("res://art/Marker Ink - Green.png"),
	preload("res://art/Marker Ink - Red.png")
	
]

func _ready() -> void:
	var random_int = random_choice()
	var testImage: Image = color_options[random_int].get_image()
	testImage.resize(600, 800, Image.INTERPOLATE_BILINEAR)
	var newtexture: ImageTexture = ImageTexture.create_from_image(testImage)
	texture = newtexture
	

func random_choice() -> int:
	var random_int = randi_range(0, 3)
	choose_random.emit(random_int)
	return random_int 
