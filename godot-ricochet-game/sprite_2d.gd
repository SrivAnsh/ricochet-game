extends Sprite2D

var speed = 300.0

func _process(delta):
	# Find exactly where the mouse cursor is on the screen
	var mouse_position = get_global_mouse_position()
	
	# Move the sprite from its current position toward the mouse
	position = position.move_toward(mouse_position, speed * delta)
	
	
