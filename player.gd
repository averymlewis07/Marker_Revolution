extends CharacterBody2D

const jump_velocity = -300.0
@onready var sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_velocity
		
	if not is_on_floor():
		if sprite.animation != "jump":
			sprite.play("jump")
	
	else:
		if sprite.animation != "run":
			sprite.play("run")
