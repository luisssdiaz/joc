extends Area2D

var velocitat : int = 300
var direccio = Vector2(0, 0)

func _ready():
	rotation_degrees = 0
	position = Vector2(100, 300)
	scale = Vector2(0.5, 0.5)


func _process(delta):
	
	position += direccio.normalized() * velocitat * delta
	#rotation_degrees += 20
	direccio = Vector2(0, 0)
	if Input.is_action_pressed("mou_dreta"):
		direccio += Vector2(1, 0)
	if Input.is_action_pressed("mou_esquerra"):
		direccio += Vector2(-1, 0)
	if Input.is_action_pressed("mou_adalt"):
		direccio += Vector2(0, -1)
	if Input.is_action_pressed("mou_abaix"):
		direccio += Vector2(0, 1)


func _on_Personatge_area_entered(area):
	modulate = Color(1, 0, 0)

func _on_Personatge_area_exited(area):
	modulate = Color(1, 1, 1)
