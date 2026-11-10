extends CanvasLayer



@export var body_options = [
	
	preload("res://art/Marker Body - Black.png"),
	preload("res://art/Marker Body - Blue.png"),
	preload("res://art/Marker Body - Green.png"),
	preload("res://art/Marker Body - Red.png"),
	
]
@export var ink_options = [
	
	preload("res://art/Marker Ink - Black.png"),
	preload("res://art/Marker Ink - Blue.png"),
	preload("res://art/Marker Ink - Green.png"),
	preload("res://art/Marker Ink - Red.png")
]

@export var cap_options = [
	preload("res://art/Marker Cap - Black.png"),
	preload("res://art/Marker Cap - Blue.png"),
	preload("res://art/Marker Cap - Green.png"),
	preload("res://art/Marker Cap - Red.png")
]

func _ready() -> void:
	%Target1.texture = body_options.pick_random()
	%Target2.texture = cap_options.pick_random()
	%Target3.texture = ink_options.pick_random()
	
