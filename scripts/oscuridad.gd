extends Node2D

const FINALOSCURIDAD = preload("uid://dl8bs6yrfdfek")

func _ready() -> void:
	DialogueManager.show_dialogue_balloon(FINALOSCURIDAD, "start")
