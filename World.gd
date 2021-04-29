extends Node

onready var timerDisplay = $TimerDisplay
var displayValue = 0


func _on_Timer_timeout():
	displayValue += 1
	timerDisplay.text = str(displayValue) 



