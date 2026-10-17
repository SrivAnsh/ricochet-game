extends Sprite2D

var speed = 600.0
var is_shooting = false
var shoot_direction = Vector2.ZERO
var start_position = Vector2(500, 300)

func _ready():

	position = start_position

func _process(delta):
	if not is_shooting:
		
		look_at(get_global_mouse_position())
		

		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			is_shooting = true
			shoot_direction = Vector2.RIGHT.rotated(rotation)
			
	else:
		
		position += shoot_direction * speed * delta
		
		
		if position.x > 1300 or position.x < -100 or position.y > 800 or position.y < -100:
			position = start_position
			is_shooting = false
