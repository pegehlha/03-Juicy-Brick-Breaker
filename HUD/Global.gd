extends Node

var lives = 5
var score = 0
var level = 0
var multiplier = 1

signal changed


func _ready():
	emit_signal("changed")

func reset():
	lives = 5
	score = 0
	level = 0

func update_score(s):
	score += s*multiplier
	emit_signal("changed")

func update_lives(l):
	lives += l
	emit_signal("changed")
	if lives <= 0:
		get_tree().change_scene("res://HUD/Game Over.tscn")



func update_level(l):
	level += l
	emit_signal("changed")
