extends Sprite2D

const max_neg_rotate = -20
const max_pos_rotate = 20
var angular_speed = PI

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	elif not Input.is_action_pressed("ui_left"):
		if not rotation > 0.00:
			direction = 1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	elif not Input.is_action_pressed("ui_right"):
		if not rotation < 0.00:
			direction = -1
	
	if rotation < 0.5 and rotation > -0.5:
		rotation += angular_speed * direction * delta
	elif rotation > 0.5 or rotation == 0.5:
		rotation = 0.49
	elif rotation < -0.5 or rotation == -0.5:
		rotation = -0.49
