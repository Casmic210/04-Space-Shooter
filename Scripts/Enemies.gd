extends Node2D

export var max_enemies = 5
export var probability = 0.3

onready var Enemy1 = load("res://Scenes/Slime.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	if get_child_count() < max_enemies + 1:
		if randf() < probability or get_child_count() == 1:
			var e = Enemy1.instance()
			add_child(e)
