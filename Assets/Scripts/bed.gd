class_name Bed
extends StaticBody2D

@export var Interactable : bool = false
@export var player : Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass

func interact_with():
	if player.player_facing == player.facing.UP or player.facing.RIGHT:
		Interactable = true
		print("Interact")
	else:
		Interactable = false
		print("Nothing to interact with")
