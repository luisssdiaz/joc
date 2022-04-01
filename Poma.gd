extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var direccio = Vector2(1, 1)
var velocitat : int = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(512, 300)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += direccio.normalized() * velocitat * delta
	if position.x <= 0:
		direccio[0] = 1
	if position.x >= 1024:
		direccio[0] = -1
	if position.y <= 0:
		direccio[1] = 1
	if position.y >= 600:
		direccio[1] = -1
