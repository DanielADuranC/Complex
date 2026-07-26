extends stateBase



func _ready() -> void:
	stateMachine = $".."
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
	
func start():
	controlled_node.raycast.set_collision_mask(0)
	controlled_node.set_physics_process(false)
	
	
	
func on_physics_process(delta:float):
	if controlled_node.last_dir == Vector2.DOWN: controlled_node.sprite.play('idle')
	elif controlled_node.last_dir == Vector2.UP: controlled_node.sprite.play('b_idle')
	
	elif controlled_node.last_dir == Vector2.LEFT:
		controlled_node.sprite.play('h_idle')
		controlled_node.sprite.flip_h = true
	elif controlled_node.last_dir == Vector2.RIGHT:
		controlled_node.sprite.play('h_idle')
		controlled_node.sprite.flip_h = false
		
	controlled_node.velocity = Vector2.ZERO
	

func end():
	controlled_node.set_physics_process(true)
	controlled_node.raycast.set_collision_mask(1)
	
func _on_dialogue_ended(resource):
	stateMachine.change_state('stateIdle')
