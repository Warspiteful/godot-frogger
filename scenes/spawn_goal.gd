extends Node


func _ready():
	randomize()
	var result = randi()%10+1
	for n in range(1,11):
		var newgoal = get_tree().get_nodes_in_group("main")[0].goal.instance()
		newgoal.global_position = get_node(String(n)).global_position
		get_tree().get_nodes_in_group("level")[0].call_deferred("add_child", newgoal)
