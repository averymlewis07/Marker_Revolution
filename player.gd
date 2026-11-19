extends CharacterBody2D

const jump_velocity = -650.0
@onready var sprite = $AnimatedSprite2D
@onready var collide = $CollisionShape2D

var maxSpeed = 600

func _ready() -> void: #Start
	sprite.play("run")
	

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_velocity
	elif Input.is_action_pressed("move_right"):
		velocity.x += 10
		velocity.x = clamp(velocity.x, -maxSpeed, maxSpeed)
	elif Input.is_action_pressed("move_left"):
		velocity.x -= 10
		velocity.x = clamp(velocity.x, -maxSpeed, maxSpeed)
	else:
		velocity.x = 0
		
	if not is_on_floor():
		if sprite.animation != "jump":
			sprite.play("jump")
	
	else:
		if sprite.animation != "run":
			sprite.play("run")
			
	move_and_slide()
	
	


#func _on_area_2d_area_entered(area: Area2D) -> void:
	#GlobalScript.storeRandomCap.connect(printCap)
	#GlobalScript.storeRandomBody.connect(printBody)
	#GlobalScript.storeRandomInk.connect(printInk)
	#
	#
#func printInk(test) -> int:
	#print(test)
	#return test
	#
#func printCap(test) -> int: 
	#print(test)
	#return test
	#
#func printBody(test) -> int:
	#print(test)
	#return test
