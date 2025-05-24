extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cas_right: RayCast2D = $RayCasRight
@onready var ray_cas_left: RayCast2D = $RayCasLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cas_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cas_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false

	
	position.x += direction * SPEED * delta
