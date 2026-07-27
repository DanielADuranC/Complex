extends Node2D

@onready var Character: character = $playable_character
const FINALBOSQUE = preload("uid://cmspp6vlkxkal")


func _ready() -> void:
	Character.pause()
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALBOSQUE, "start")
	
