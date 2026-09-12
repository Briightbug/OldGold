class_name Player
extends CharacterBody2D

@export var move_speed = 10.0
@export var move_speed_multiplier = 100.0

var direction : Vector2

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("Up"):
		direction.y = -move_speed
	elif Input.is_action_pressed("Down"):
		direction.y = move_speed
	else:
		direction.y = 0
	
	if Input.is_action_pressed("Left"):
		direction.x = -move_speed
	elif Input.is_action_pressed("Right"):
		direction.x = move_speed
	else:
		direction.x = 0
	
	direction = direction.normalized()
	velocity = direction * move_speed * move_speed_multiplier * delta
	
	move_and_slide()
