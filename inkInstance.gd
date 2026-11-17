extends TextureRect
@export var color_options = [
	
	preload("res://art/Marker Ink - Black.png"),
	preload("res://art/Marker Ink - Blue.png"),
	preload("res://art/Marker Ink - Green.png"),
	preload("res://art/Marker Ink - Red.png")
]

func _ready() -> void:
	GlobalScript.storeRandomInk.connect(printInk)
	self.hide()



func _on_area_2d_area_entered(area: Area2D) -> void:
	self.show()
	
func printInk(test) -> void: 
	texture = color_options[test]
