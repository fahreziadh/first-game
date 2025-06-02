extends Node2D

var SPEED = 30
var DIRECTION = 1

@onready var raycast_right: RayCast2D = $RaycastRight
@onready var raycast_left: RayCast2D = $RaycastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (raycast_right.is_colliding()):
		DIRECTION = -1
		animated_sprite.flip_h = true
	if (raycast_left.is_colliding()):
		DIRECTION = 1
		animated_sprite.flip_h = false
		
	position.x += SPEED * delta * DIRECTION
