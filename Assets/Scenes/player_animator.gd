extends Node2D

@export var player : Player
@export var sprite : Sprite2D
@export var animation_player : AnimationPlayer

var default_animation_speed

func _ready() -> void:
	default_animation_speed = animation_player.speed_scale

func _process(_delta: float) -> void:
	if player.velocity.length() > 0.0:
		# Play movement animations
		if player.player_facing == player.facing.DOWN:
			animation_player.play("walk_down")
		elif player.player_facing == player.facing.UP:
			animation_player.play("walk_up")
		elif player.player_facing == player.facing.LEFT:
			animation_player.play("walk_side")
			sprite.flip_h = false
		elif player.player_facing == player.facing.RIGHT:
			animation_player.play("walk_side")
			sprite.flip_h = true
	else:
		# Play idle animations
		if player.player_facing == player.facing.DOWN:
			animation_player.play("idle_down")
		elif player.player_facing == player.facing.UP:
			animation_player.play("idle_up")
		elif player.player_facing == player.facing.LEFT:
			animation_player.play("idle_side")
			sprite.flip_h = false
		elif player.player_facing == player.facing.RIGHT:
			animation_player.play("idle_side")
			sprite.flip_h = true
