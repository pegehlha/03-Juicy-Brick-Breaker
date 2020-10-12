extends Sprite

var transition = 0.01


func _ready():
	modulate = Color(1,1,1,1)
	modulate.h = 0.2
	modulate.s = 0.2
	
	

func _physics_process(_delta):
	modulate.h = wrapf(modulate.h+transition,0,1)
	
	
