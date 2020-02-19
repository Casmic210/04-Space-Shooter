extends Node2D

func _ready():
	pass



func _on_Spaceship_health_changed():
	var h = get_node("/root/Game/Spaceship").health
	$Health.text = "Health: " + str(h)


func _on_Spaceship_score_changed():
	var s = get_node("/root/Game/Spaceship").score
	#$Score.text = "Score: " + str(s)
