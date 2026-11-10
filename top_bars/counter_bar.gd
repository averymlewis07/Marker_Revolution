extends CanvasLayer


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
	# texture = newtexture



#@export var body_options = [
	#
	#preload("res://art/Marker Body - Black.png"),
	#preload("res://art/Marker Body - Blue.png"),
	#preload("res://art/Marker Body - Green.png"),
	#preload("res://art/Marker Body - Red.png"),
	#
#]
#@export var ink_options = [
	#
	#preload("res://art/Marker Ink - Black.png"),
	#preload("res://art/Marker Ink - Blue.png"),
	#preload("res://art/Marker Ink - Green.png"),
	#preload("res://art/Marker Ink - Red.png")
#]
#
#@export var cap_options = [
	#preload("res://art/Marker Cap - Black.png"),
	#preload("res://art/Marker Cap - Blue.png"),
	#preload("res://art/Marker Cap - Green.png"),
	#preload("res://art/Marker Cap - Red.png")
#]
#
#func _ready() -> void:
	#%Part1.texture = body_options.pick_random()
	#%Part2.texture = cap_options.pick_random()
	#%Part3.texture = ink_options.pick_random()
