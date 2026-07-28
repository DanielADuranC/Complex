extends Node2D

const CALLE_CON_MANOS = preload("uid://c6ojpvtkdj2uw")
@onready var Character: character = $playable_character
@onready var nodo_manos_sorpresa: Node2D = $Nodo_manos_sorpresa
@onready var glove_1_png: Sprite2D = $Glove1_png
var mano_visible: bool = ManejoDialogoEscena.mostrar_mano

func _ready() -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_CON_MANOS, "start")

func _process(_delta: float) -> void:
	mano_visible = ManejoDialogoEscena.mostrar_mano
	if mano_visible == true:
		glove_1_png.visible = true
		ManejoDialogoEscena.mostrarfoto = false

func _on_area_2d_body_entered(body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_CON_MANOS, "start2")
	nodo_manos_sorpresa.visible = true
	
func _on_glove_1_png_visibility_changed() -> void:
	await get_tree().create_timer(2.0).timeout
	Escenas.cambiar_escena("uid://rp33hrw6fdx6")
