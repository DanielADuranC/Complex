extends Node2D

@onready var Character: character = $playable_character
@onready var Character2: character = $playable_character2
const BAÑO = preload("uid://dm0efkd8xmccg")



func _ready() -> void:
	Character.pause()
	Character2.pause()
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(BAÑO, "start")
