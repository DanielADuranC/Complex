class_name StateMachine extends Node

@onready var controled_node:Node = self.owner

@export var default_state:stateBase 

var current_state:stateBase = null

func _ready() -> void:
	current_state = default_state
	_state_start()
	
func _state_start() -> void:
	prints('StateMachine', controled_node.name, 'Start state', current_state)
	current_state.controlled_node = controled_node
	current_state.stateMachine = self
	current_state.start()
	
func change_state(new_state:String) -> void:
	if current_state and current_state.has_method('end'):
		current_state.end()
		current_state = get_node(new_state)
		_state_start()
		
func _process(delta:float) -> void:
	if current_state and current_state.has_method("on_process"):
		current_state.on_process(delta)
		
func _physics_process(delta:float) -> void:
	if current_state and current_state.has_method("on_physics_process"):
		current_state.on_physics_process(delta)
		
func _input(event:InputEvent) -> void:
	if current_state and current_state.has_method("on_input"):
		current_state.on_input(event)
		
func _unhandled_input(event:InputEvent) -> void:
	if current_state and current_state.has_method("on_unhandled_input"):
		current_state.on_unhandled_input(event)
		
func _unhandled_key_input(event:InputEvent) -> void:
	if current_state and current_state.has_method("on_unhandled_key_input"):
		current_state.on_unhandled_key_input(event)
