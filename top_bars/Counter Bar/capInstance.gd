extends TextureRect

@export var color_options = [
	
	preload("res://art/Marker Cap - Black.png"),
	preload("res://art/Marker Cap - Blue.png"),
	preload("res://art/Marker Cap - Green.png"),
	preload("res://art/Marker Cap - Red.png")
]

func _ready() -> void:
	GlobalScript.storeRandomCap.connect(printCap)
	self.hide()



func _on_area_2d_area_entered(area: Area2D) -> void:
	self.set_process(true)
	self.show()	
	self.set_process(false)
	
func printCap(test) -> void: 
	var myTexture := AtlasTexture.new()
	myTexture.atlas = color_options[test]
	myTexture.region = Rect2(784, 298, 200, 265)
	texture = myTexture
	
