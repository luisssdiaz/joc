extends KinematicBody2D


var velocitat_base = 250
var velocitat = Vector2.ZERO
var gravetat = Vector2.DOWN * 1200
var salt = Vector2.UP * 600

func _physics_process(delta):
	
	velocitat.x = 0
	
	if Input.is_action_pressed("mou_dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou_esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
	if Input.is_action_just_pressed("mou_adalt") and is_on_floor():
		velocitat += salt
	
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)
	
	anima(velocitat)
	
func anima(velocitatt):
	var animacio: AnimatedSprite = $AnimatedSprite
	if velocitatt.x > 0:
		animacio.flip_h = false
		animacio.play("Walk")
	elif velocitatt.x < 0:
		animacio.flip_h = true
		animacio.play("Walk")
	if abs(velocitatt.x) < 0.1:
		animacio.play("Stand")
	if velocitatt.y < -1:
		animacio.play("Jump")

func _on_Porta_body_entered(body):
	get_tree().change_scene("res://Plataforma.tscn")
