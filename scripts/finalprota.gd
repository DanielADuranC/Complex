extends Node2D

@onready var texture1: TextureRect = $Control/TextureRect
@onready var texture2: TextureRect = $Control/TextureRect2
const FINALPUERTAROTA = preload("uid://cl6hoj727tvm3")

func _ready() -> void:
	texture2.visible = false
	ManejoDialogoEscena.mostrarfoto = false
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALPUERTAROTA, "start")
	
func _process(delta: float) -> void:
	if ManejoDialogoEscena.mostrarfoto:
		texture1.visible = false
		texture2.visible = true
	
		
