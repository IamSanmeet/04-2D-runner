extends Node2D

onready var Coin = load("res://Coin/Coin.tscn")

func pawn(attr, p):
	var coin = Coin.instance()
	for a in attr:
		coin[a] = attr[a]
	coin.position = p
