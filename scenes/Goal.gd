extends Area2D

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _on_Goal_body_entered( body ):
	if(body.is_in_group("player")):
		game.level += 1
		print("hello")
		get_tree().change_scene("res://scenes/level2.tscn")
