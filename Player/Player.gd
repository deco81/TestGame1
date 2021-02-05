extends KinematicBody2D

const MAX_SPEED = 100
const ACCELERATION = 100
const FRICTION = 10
var velocity = Vector2.ZERO

func _ready():
	velocity = Vector2(1,-2)

func _physics_process(delta):
	var input_vector = Vector2.ZERO

	var collision_info = move_and_collide(velocity)
	
	if collision_info != null:
				
		if collision_info.collider.name == "Frame":
			var collider_shape = collision_info.collider_shape 
			match collider_shape.name: 
				"CollisionShape2DTop": 
					velocity = Vector2(velocity.x, -velocity.y)
				"CollisionShape2DBottom": 
					#velocity = Vector2(0,0)
					velocity = Vector2(velocity.x, -velocity.y)				
				"CollisionShape2DLeft": 
					velocity = Vector2(-velocity.x, velocity.y)
				"CollisionShape2DRight": 
					velocity = Vector2(-velocity.x, velocity.y)
		elif collision_info.collider.name == "Bar":
			velocity = Vector2(velocity.x, -velocity.y)
			print(collision_info.collider_velocity)
		else:
			velocity = Vector2(velocity.x, -velocity.y)
			
		
		
		var collider_node = collision_info.collider
		
		
		var x = 1
	
