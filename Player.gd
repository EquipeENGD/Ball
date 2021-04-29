extends Area2D

export(int) var SPEED = 170
export(int) var ROTSPEED = 1
var velocity = Vector2(0,0)
onready var ballSprite = $BallSprite


func _process(delta):
	velocity = Vector2(0,0)
	if Input.is_action_pressed("ui_right"):
		move(SPEED,0)
	if Input.is_action_pressed("ui_left"):
		move(-SPEED,0)
	if Input.is_action_pressed("ui_up"):
		move(0,-SPEED)
	if Input.is_action_pressed("ui_down"):
		move(0,SPEED)
	
	position += velocity.normalized()*delta*SPEED
	
	if velocity.x > 0:
		ballSprite.rotation_degrees += ROTSPEED
	elif velocity.x < 0:
		ballSprite.rotation_degrees -= ROTSPEED


func move(xspeed,yspeed):
	velocity += Vector2(xspeed,yspeed)

