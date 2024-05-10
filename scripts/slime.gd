extends Node2D

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D
@onready var ray_cast_down = $RayCastDown
@onready var slime = $"."

const SPEED = 60

var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    # TODO: prevent enemies from floating off platform.
    #if  not ray_cast_down.is_colliding():
        #direction = -1 if direction==1 else 1
        #animated_sprite.flip_h = !animated_sprite.flip_h
    if ray_cast_right.is_colliding():
        direction = -1
        animated_sprite.flip_h = true
    if ray_cast_left.is_colliding():
        direction = 1
        animated_sprite.flip_h = false
    
    position.x += direction * SPEED * delta

