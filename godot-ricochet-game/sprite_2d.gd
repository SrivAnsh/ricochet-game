extends Sprite2D

var speed = 600.0
var is_shooting = false
var shoot_direction = Vector2.ZERO

func _process(delta):
	if not is_shooting:
		
		look_at(get_global_mouse_position())
		
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			is_shooting = true
			
		
			shoot_direction = Vector2.RIGHT.rotated(rotation)
			
	else:
	
		position += shoot_direction * speed * delta

		if position.x > 2000 or position.x < -1000 or position.y > 1500 or position.y < -1000:
			position = Vector2(500, 300) 
			is_shooting = false
