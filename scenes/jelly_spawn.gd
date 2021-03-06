extends Position2D

var car
var car_position

func _ready():
	randomize()
	car = randi()%4
	car_position = randi()%10
	set_timer()
	get_node("Timer").start()
	generate_car()

func set_timer():
	match(car):
		0:
			get_node("Timer").wait_time = 4
		1:
			get_node("Timer").wait_time = 5
		2:
			get_node("Timer").wait_time = 7
		3:
			get_node("Timer").wait_time = 6
		4:
			get_node("Timer").wait_time = 8
	

func generate_car():
	var newcar
	match (car):
		0:
			newcar = get_tree().get_nodes_in_group("main")[0].jelly1.instance()
		1:
			newcar = get_tree().get_nodes_in_group("main")[0].jelly2.instance()
		2:
			newcar = get_tree().get_nodes_in_group("main")[0].jelly3.instance()
		3:
			newcar = get_tree().get_nodes_in_group("main")[0].jelly4.instance()
		4:
			newcar = get_tree().get_nodes_in_group("main")[0].jelly1.instance()
	

	get_tree().get_nodes_in_group("level")[0].call_deferred("add_child", newcar)
	if(car_position < 5):
		newcar.global_position = global_position
		newcar.direction = 1
		newcar.spawn_original = self
	else:
		newcar.global_position = get_node("car_spawni").global_position
		newcar.spawn_original = get_node("car_spawni")

func _on_Timer_timeout():
	generate_car()
