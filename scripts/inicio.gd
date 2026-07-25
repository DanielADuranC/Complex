extends Node2D

@onready var sarah: AnimatedSprite2D = $sarah
@onready var hector: AnimatedSprite2D = $hector
const INICIO = preload("uid://dgwdus37gml2f")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sarah.play("r_idle")
	hector.play("r_idle")
	DialogueManager.show_dialogue_balloon(INICIO, "start")
