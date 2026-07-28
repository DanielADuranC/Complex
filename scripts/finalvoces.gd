extends Node2D


const FINALVOCES = preload("uid://b8swgm0yl0nh4")


func _ready() -> void:
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALVOCES, "start")
