extends KinematicBody2D

onready var VP = get_viewport()
onready var VP_size = get_viewport_rect().size
export var paddle_speed = 30
onready var HUD = get_node("/root/Game/HUD")

func _ready():
	position.y = VP_size.y - 50


func _physics_process(_delta):
	var target = VP.get_mouse_position().x
	target = clamp( target, 0, VP_size.x)
	var d = (target - position.x)
	var s = sign(d)
	if abs(d) > paddle_speed:
		position.x += s*paddle_speed
	else: 
		position.x += d

	
	


func _on_AnimatedSprite_animation_finished():
	$AnimatedSprite.play("default")

func play_sound(sound):
	if HUD.audio_effects:
		sound.play()
