extends Node2D

const PRUEBA = preload("uid://cmv6vgyaticrl")
@onready var areaprueba: Area2D = $prueba/Area2Dprueba

var player:CharacterBody2D
func _ready() -> void:
	player = get_tree().current_scene.find_child('playable_character')



func _process(delta: float) -> void:
	var actual_collider = player.raycast.get_collider()
	if player.raycast.is_colliding() and Input.is_action_just_pressed("interact"):
		player.pause()
		match actual_collider:
			areaprueba:
				DialogueManager.show_dialogue_balloon(PRUEBA, 'start')
