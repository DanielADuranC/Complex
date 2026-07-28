extends Node2D

const CALLE_SIN_SANGRE = preload("uid://cc2kxwhif76se")
@onready var Character: character = $playable_character
@onready var area_2d: Area2D = $Area2D
@onready var area_2d_2: Area2D = $Area2D2
var numero_puerta: String = "puerta1"
@onready var collision_shape_2d_4: CollisionShape2D = $StaticBody2D/CollisionShape2D4
@onready var collision_shape_2d: CollisionShape2D = $Area2D2/CollisionShape2D
var desactivar_colision: bool = ManejoDialogoEscena.deshabilitar_colision_calle

#Un montón de puertas
@onready var puerta_1: Area2D = $Puertas/Puerta1
@onready var puerta_2: Area2D = $Puertas/Puerta2
@onready var puerta_3: Area2D = $Puertas/Puerta3
@onready var puerta_4: Area2D = $Puertas/Puerta4
@onready var puerta_5: Area2D = $Puertas/Puerta5
@onready var puerta_6: Area2D = $Puertas/Puerta6
@onready var puerta_7: Area2D = $Puertas/Puerta7

func _ready() -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, "start")
	ManejoDialogoEscena.deshabilitar_colision_calle = false
	
func _process(_delta: float) -> void:
	desactivar_colision = ManejoDialogoEscena.deshabilitar_colision_calle
	if numero_puerta == "puerta8":
		Escenas.cambiar_escena("res://scenes/casa.tscn")
	if desactivar_colision == true:
		area_2d_2.queue_free()
		ManejoDialogoEscena.deshabilitar_colision_calle = false

func _on_area_2d_body_entered(_body: character) -> void:
	Character.pause()
	collision_shape_2d_4.disabled = false
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, "start2")
	area_2d.queue_free()
	
func _on_area_2d_2_body_entered(_body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, "start3")
	area_2d_2.queue_free()
	collision_shape_2d_4.disabled = false


func _on_puerta_1_body_entered(_body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, numero_puerta)
	print(numero_puerta)
	var numero = numero_puerta[-1].to_int()
	numero += 1
	numero_puerta = "puerta" + str(numero)
	puerta_1.queue_free()
	

func _on_puerta_2_body_entered(_body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, numero_puerta)
	var numero = numero_puerta[-1].to_int()
	numero += 1
	numero_puerta = "puerta" + str(numero)
	puerta_2.queue_free()


func _on_puerta_3_body_entered(_body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, numero_puerta)
	var numero = numero_puerta[-1].to_int()
	numero += 1
	numero_puerta = "puerta" + str(numero)
	puerta_3.queue_free()


func _on_puerta_4_body_entered(_body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, numero_puerta)
	var numero = numero_puerta[-1].to_int()
	numero += 1
	numero_puerta = "puerta" + str(numero)
	puerta_4.queue_free()


func _on_puerta_5_body_entered(_body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, numero_puerta)
	var numero = numero_puerta[-1].to_int()
	numero += 1
	numero_puerta = "puerta" + str(numero)
	puerta_5.queue_free()


func _on_puerta_6_body_entered(_body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, numero_puerta)
	var numero = numero_puerta[-1].to_int()
	numero += 1
	numero_puerta = "puerta" + str(numero)
	puerta_6.queue_free()


func _on_puerta_7_body_entered(_body: character) -> void:
	Character.pause()
	DialogueManager.show_dialogue_balloon(CALLE_SIN_SANGRE, numero_puerta)
	var numero = numero_puerta[-1].to_int()
	numero += 1
	numero_puerta = "puerta" + str(numero)
	puerta_7.queue_free()
