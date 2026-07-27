extends Node2D

@onready var Character: character = $playable_character
const FINALMADRE = preload("uid://d2lis07spj6fk")
@onready var mujer: Area2D = $mujer
@onready var evadirmujer: Area2D = $evadirmujer


func _ready() -> void:
	Character.pause()
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALMADRE, "start")


func _on_evadirmujer_body_entered(body: CharacterBody2D) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(FINALMADRE, "start2")
	evadirmujer.queue_free()

func _process(delta: float) -> void:
	if Character.raycast.is_colliding() and Input.is_action_just_pressed("interact"):
		Character.pause()
		if Character.raycast.get_collider() == mujer:
			Escenas.cambiar_escena("res://scenes/finalmadre.tscn")
