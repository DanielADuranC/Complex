extends Node2D

const CALLE_1 = preload("uid://cytv0df6bs4u0")
@onready var Character: character = $playable_character
@onready var area2d: Area2D = $Area2D
@onready var area2d2: Area2D = $Area2D2
@onready var area2d3: Area2D = $Area2D3
@onready var camera: Camera2D = $playable_character/Camera2D
@onready var monstruo: CharacterBody2D = $monstruo

func _ready() -> void:
	ManejoDialogoEscena.monstruo_moviendose_calle = false
	await get_tree().create_timer(2.0).timeout

	
func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_1, "start")
	area2d.queue_free()


func _on_area_2d2_body_entered(body: CharacterBody2D) -> void:
	Character.pause()
	var tween = create_tween()
	tween.tween_property(camera, "position", Vector2(-200, 0)  , 1)
	DialogueManager.show_dialogue_balloon(CALLE_1, "start2")
	area2d2.queue_free()
	area2d3.connect("body_entered", _on_area_2d3_body_entered)

func _on_area_2d3_body_entered(body: CharacterBody2D) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_1, "start3")
	area2d3.queue_free()
	
