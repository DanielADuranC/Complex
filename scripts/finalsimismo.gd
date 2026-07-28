extends Node2D

const FINALASIMISMO = preload("uid://br43snxyyn6m0")
@onready var texture1: TextureRect = $Control/TextureRect
@onready var texture2: TextureRect = $Control/TextureRect2
@onready var texture3: TextureRect = $Control/TextureRect3


func _ready() -> void:
	texture2.visible = false
	texture3.visible = false
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALASIMISMO, "start")
	
func _process(delta: float) -> void:
	if ManejoDialogoEscena.primerfoto:
		texture1.visible = false
		texture2.visible = true
	elif ManejoDialogoEscena.segundafoto:
		texture2.visible = false
		texture3.visible = true
	
