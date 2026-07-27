extends Node2D

const CALLE_SIN_SANGRE = preload("uid://cc2kxwhif76se")
@onready var Character: character = $playable_character
@onready var area_2d: Area2D = $Area2D
@onready var area_2d_2: Area2D = $Area2D2
@onready var timer: Timer = $Timer


func _ready() -> void:
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, "start")
	await get_tree().create_timer(2.0).timeout

func _on_area_2d_body_entered(body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, "start2")
	area_2d.queue_free()
	
func _on_area_2d_2_body_entered(body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, "start3")
	area_2d_2.queue_free()
	cuerpo_detenido(body)
	
func cuerpo_detenido(body: character) -> void:
	timer.start()
	var velocidad_anterior = body.speed
	body.speed = 0
	timer.start()
	if _on_timer_timeout():
		body.speed = velocidad_anterior

func _on_timer_timeout() -> bool:
	return true
