extends Node2D

const SEGUNDOPISO = preload("uid://jyp7j11r8rbr")
@onready var Character: character = $playable_character
@onready var puertaroja: Area2D = $Puertaroja
@onready var puertarota: Area2D = $Puertarota

func _ready() -> void:
	Character.pause()
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(SEGUNDOPISO, "start")

func _process(delta: float) -> void:
	if Character.raycast.is_colliding() and Input.is_action_just_pressed("interact"):
		Character.pause()
		if Character.raycast.get_collider() == puertarota:
			Escenas.cambiar_escena("res://scenes/finalprota.tscn")
		else:
			Escenas.cambiar_escena("res://scenes/escenamadre.tscn")
