extends Node2D

@onready var Character: character = $playable_character
const CASA = preload("uid://f1pwqttr5ri")



func _ready() -> void:
	Character.pause()
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(CASA, "start")
