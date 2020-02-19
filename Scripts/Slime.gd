extends KinematicBody2D

var ready = false
var score = 10
var new_position = Vector2(0,0)

func get_new_position():
	var VP = get_viewport_rect().size
	new_position.x = randi() % int(VP.x)
	new_position.y = randi() % int(VP.y)
	ready = true

func die():
	queue_free()

func _ready():
	randomize()
	get_new_position()

func _physics_process(delta):
	if ready:
		position = new_position
		ready = false
	


func _on_Timer_timeout():
	get_new_position()
