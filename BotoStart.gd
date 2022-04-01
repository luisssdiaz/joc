extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	scale = Vector2(0.5, 0.5)

var mida = 1
var ratoli_dintre = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scale.x += mida * 0.001
	scale.y += mida * 0.001
	if scale >= Vector2(0.6, 0.6):
		mida = -1
	if scale <= Vector2(0.5, 0.5):
		mida = 1
	if ratoli_dintre == 1 and Input.is_action_pressed("click_esquerre"):
		get_tree().change_scene("res://Escena2.tscn")


func _on_BotoStart_mouse_entered():
	scale += Vector2(0.1, 0.1)
	ratoli_dintre = 1


func _on_BotoStart_mouse_exited():
	scale -= Vector2(0.1, 0.1)
	ratoli_dintre = 0

