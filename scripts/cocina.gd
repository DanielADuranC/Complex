extends Node2D

@onready var cuchillo: Area2D = $cuchillo
@onready var Character: character = $playable_character
const CUCHILLO = preload("uid://nu35yoy6pgkg")



func _process(delta: float) -> void:
	if Character.raycast.is_colliding() and Input.is_action_just_pressed("interact"):
		Character.pause()
		if Character.raycast.get_collider() == cuchillo:
			DialogueManager.show_dialogue_balloon(CUCHILLO, "start")
	
