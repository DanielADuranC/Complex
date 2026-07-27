extends Node2D

const CALLE_CON_MANOS = preload("uid://c6ojpvtkdj2uw")
@onready var Character: character = $playable_character

func _ready() -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_CON_MANOS, "start")
