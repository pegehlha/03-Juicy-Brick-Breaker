extends AudioStreamPlayer

onready var HUD = get_node("/root/Game/HUD")


func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")

func play_music():
	if HUD.audio_music and playing:
		pass
	elif HUD.audio_music and not playing:
		playing = true
	else:
		playing = true

func _on_HUD_changed():
	play_music()


func _on_Music_finished():
	play_music()


func play_sound(sound):
	if HUD.audio_effects:
		sound.play()
