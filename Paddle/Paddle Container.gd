extends Node2D

onready var Paddle = load("res://Paddle/Paddle.tscn")

func _ready():
	load_paddle()


func load_paddle():
	var paddle = Paddle.instance()
	add_child(paddle)
