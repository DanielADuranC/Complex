extends Control


func _on_iniciar_pressed() -> void:
	Escenas.cambiar_escena("res://scenes/inicio.tscn")


func _on_grafo_pressed() -> void:
	pass 


func _on_salir_pressed() -> void:
	get_tree().quit()
