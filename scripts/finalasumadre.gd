extends Node2D

const FINALASUMADRE = preload("uid://ccfd1ak35ucj")


func _ready() -> void:
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALASUMADRE, "start")
