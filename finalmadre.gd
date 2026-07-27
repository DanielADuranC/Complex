extends Node2D

const FINALMADRE = preload("uid://d2lis07spj6fk")

func _ready() -> void:
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALMADRE, "start3")
