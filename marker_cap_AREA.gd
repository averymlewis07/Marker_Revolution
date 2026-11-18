extends Area2D

@onready var cap = $Sprite2D
@export var speed := 385

func _process(delta: float) -> void:
	position.x -= speed * delta
	
	if position.x < -100:
		queue_free()


func _on_area_entered(area: Area2D) -> void:
	var random_int = cap.random_int
	GlobalScript.emit_signal("storeRandomCap", random_int)
	hide()
	print("hitCap")
	
