extends Control

var time = 0
var audio_music = false
var audio_effects = false

signal changed

func _ready():
	Global.connect("changed",self,"_on_Global_changed")
	update_score()
	update_lives()
	update_time()



func update_score():
	$Score.text = "Score: " + str(Global.score)


func update_lives():
	$Lives.text = "Lives: " + str(Global.lives)

func update_time():
	$Time.text = "Score: " + str(time)




func _on_Timer_timeout():
	time += 1
	update_time()


func _on_Global_changed():
	update_score()
	update_lives()


func _on_Audio_music_toggled(button_pressed):
	audio_music = button_pressed
	emit_signal("changed")


func _on_Audio_effect_toggled(button_pressed):
	audio_effects = button_pressed
	emit_signal("changed")
