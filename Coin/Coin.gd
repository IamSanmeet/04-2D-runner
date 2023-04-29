extends Area2D

export var score = 100

func _ready():
	pass


func _on_Coin_body_entered(body):
	if body.name == "Player":
		Global.increase_score(score)
		var coin_sound = get_node_or_null("/root/Game/Coin_Sound")
		if coin_sound != null:
			coin_sound.play()
		queue_free()
