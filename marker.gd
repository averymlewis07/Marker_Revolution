extends CharacterBody2D

@export var speed := 385

func _process(delta: float) -> void:
	position.x -= speed * delta
	
	if position.x < -100:
		queue_free()
