extends StaticBody2D



var strength = 0
var points = 100

var dying = false

func _ready():
	randomize() 

func _physics_process(_delta):
	if dying:
		queue_free()

func set_strength(s):
	if s <= 0:
		get_node("/root/Game/Powerup Container").add_powerup(position)
		die()
	strength = s
	var x = strength * 100
	$Sprite.region_rect = Rect2(x, 0, 99, 49)
	points = strength*10 + 100

func damage(_d):
	set_strength(strength - 1)
	Global.update_score(points)




func die():
	dying = true
	
