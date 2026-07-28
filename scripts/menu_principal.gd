extends Control

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
func _on_iniciar_pressed() -> void:
	Escenas.cambiar_escena("res://scenes/inicio.tscn")

func _on_salir_pressed() -> void:
	get_tree().quit()
