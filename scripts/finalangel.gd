extends Node2D


const FINALANGEL = preload("uid://fuskiehm7buy")


func _ready() -> void:
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALANGEL, "start")
