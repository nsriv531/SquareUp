extends CharacterBody2D

const SPEED = 200

func _physics_process(delta):
	velocity = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	
	velocity = velocity.normalized() * SPEED
	move_character(velocity * delta)
	
func move_character(movement):
	position += movement

