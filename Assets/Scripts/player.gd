class_name Player
extends CharacterBody2D

@export var move_speed = 10.0

var direction = 0

func _process(_delta: float) -> void:
	print(str(direction))

func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	direction = Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * move_speed
	

	move_and_slide()
