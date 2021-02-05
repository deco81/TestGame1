extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var block_scene = preload("res://Block.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in 10:
		var block = block_scene.instance()
		block.set_position(Vector2(i * 20,15))
		add_child(block)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	pass # Replace with function body.
