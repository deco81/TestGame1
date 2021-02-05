extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var intact = true
var hit = false
var hp = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 

func _physics_process(delta):
	var x = 1
	if hp <= 0:
		queue_free()
		
		
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Hitbox_area_entered(area):
	print("entered")
	hp = hp -1
	hit = false
	
