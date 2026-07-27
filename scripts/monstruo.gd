extends CharacterBody2D


func _physics_process(_delta: float) -> void:
	if ManejoDialogoEscena.monstruo_moviendose_calle == true:
		velocity = Vector2(150, 0)
	else:
		velocity = Vector2.ZERO
	move_and_slide()
