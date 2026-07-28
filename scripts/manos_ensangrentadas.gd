extends Node2D

const FINALOSCURIDAD = preload("uid://dl8bs6yrfdfek")

func _ready() -> void:
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALOSCURIDAD, "start2")
