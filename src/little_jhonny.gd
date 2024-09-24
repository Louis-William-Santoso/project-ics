extends CharacterBody2D

#Declaration
var jatuh = 5
var rotationPlus = 0.01
var lompat = 210
var rotationMin = 0.4
func _process(delta):
	# gravity
	velocity.y += jatuh
	$".".rotation += rotationPlus
	
	move_and_slide()
	
	#jhonny lompat 
	if (Input.is_action_just_pressed("jump")):
		velocity.y -= lompat
		move_and_slide()
		$".".rotation -= rotationMin
		$"Jhonny_lompat".animation = "lompat"
		
	if (position.x < -556 || position.y > 507):
		get_tree().quit()
		
	
		
