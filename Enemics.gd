extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(176, 540)
	#scale = Vector2(0.05, 0.05)

var velocitat = 300
var direccio = Vector2(0, -1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += direccio * velocitat * delta
	if position.y >= 541:
		direccio = Vector2(0, -1)
	if position.y <= 59:
		direccio = Vector2(0, 1)
