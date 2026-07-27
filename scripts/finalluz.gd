extends Node2D


const FINALBOSQUE = preload("uid://cmspp6vlkxkal")


func _ready() -> void:
	await get_tree().create_timer(2).timeout
	DialogueManager.show_dialogue_balloon(FINALBOSQUE, "start3")
