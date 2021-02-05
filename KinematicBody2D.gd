extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.get_action_strength("ui_left"):
		velocity = Vector2(-2,0)
		velocity = velocity * 2.5 
	elif Input.get_action_strength("ui_right"):
		velocity = Vector2(2,0)
		
	move_and_collide(velocity)		

