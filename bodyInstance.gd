extends TextureRect

@export var color_options = [
	
	preload("res://art/Marker Body - Black.png"),
	preload("res://art/Marker Body - Blue.png"),
	preload("res://art/Marker Body - Green.png"),
	preload("res://art/Marker Body - Red.png")
]


func _on_area_2d_area_entered(area: Area2D) -> void:
	GlobalScript.storeRandomBody.connect(printBody)
	
	

func printBody(test) -> void: 
	texture = color_options[test]
