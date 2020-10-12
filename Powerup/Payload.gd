extends Node2D

var payload_type = 0

func _ready():
	pass


func enable_payload():
	if payload_type == 0:
		var ball_container = get_node("/root/Game/Ball Container")
		if ball_container:
			var balls = ball_container.get_children()
			for ball in balls:
				if ball.get_node("AnimatedSprite").scale.x == 1:
					ball.get_node("AnimatedSprite").scale = Vector2(1.5,1.5)
					ball.get_node("CollisionShape2D").scale = Vector2(1.5,1.5)
					break
	if payload_type == 1:
		get_node("/root/Game/HUD/ColorRect").color = Color(1,0,0,1)
		Global.multiplier = 2

func disable_payload():
	if payload_type == 0:
		var ball_container = get_node("/root/Game/Ball Container")
		if ball_container:
			var balls = ball_container.get_children()
			for ball in balls:
				if ball.get_node("AnimatedSprite").scale.x == 1.5:
					ball.get_node("AnimatedSprite").scale = Vector2(1,1)
					ball.get_node("CollisionShape2D").scale = Vector2(1,1)
					break
	if payload_type == 1:
		get_node("/root/Game/HUD/ColorRect").color = Color(1,0,0,0.5)
		Global.multiplier = 1

func _on_Timer_timeout():
	disable_payload()
	print("Done!")
	queue_free()
