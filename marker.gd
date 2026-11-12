extends Area2D

signal move_up(choice: int)
@export var speed := 385

func _process(delta: float) -> void:
	position.x -= speed * delta
	
	if position.x < -100:
		queue_free()


func _on_area_entered(area: Area2D) -> void:
	hide()
	


func _on_sprite_2d_choose_random(choice: int) -> void:
	move_up.emit(choice)
