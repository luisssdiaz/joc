extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 90
	position = Vector2(512, 300)
	scale = Vector2(2, 2)
export var velocitat : int = 300
export var direccio = Vector2(0, 0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	position += direccio * velocitat * delta
	rotation_degrees += 20
	if Input.is_action_pressed("mou_dreta"):
		direccio = Vector2(1, 0)
