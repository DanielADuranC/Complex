extends Node2D

const FINALASIMISMO = preload("uid://br43snxyyn6m0")


func _ready() -> void:
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALASIMISMO, "start")
