extends Control

onready var pauseText = $PauseText

func _input(event):
	if Input.is_action_just_pressed("paused"):
		get_tree().paused = not get_tree().paused
		pauseText.visible = not pauseText.visible
		
