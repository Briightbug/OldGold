class_name Player
extends CharacterBody2D

@export var move_speed = 10.0
@export var move_speed_multiplier = 100.0

var direction : Vector2

enum facing {UP, DOWN, LEFT, RIGHT}
var player_facing : facing

func _ready() -> void:
	player_facing = facing.DOWN

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("Up"):
		direction.y = -move_speed
		player_facing = facing.UP
	elif Input.is_action_pressed("Down"):
		direction.y = move_speed
		player_facing = facing.DOWN
	else:
		direction.y = 0
	
	if Input.is_action_pressed("Left"):
		direction.x = -move_speed
		player_facing = facing.LEFT
	elif Input.is_action_pressed("Right"):
		direction.x = move_speed
		player_facing = facing.RIGHT
	else:
		direction.x = 0
	
	direction = direction.normalized()
	velocity = direction * move_speed * delta * move_speed_multiplier
	
	move_and_slide()
