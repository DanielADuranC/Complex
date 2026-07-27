extends stateBase



func on_physics_process(_delta:float) -> void:
	if controlled_node.last_dir == Vector2.DOWN: controlled_node.sprite.play('idle')
	elif controlled_node.last_dir == Vector2.UP: controlled_node.sprite.play('b_idle')
	
	elif controlled_node.last_dir == Vector2.LEFT:
		controlled_node.sprite.play('h_idle')
		controlled_node.sprite.flip_h = true
	elif controlled_node.last_dir == Vector2.RIGHT:
		controlled_node.sprite.play('h_idle')
		controlled_node.sprite.flip_h = false
		
	controlled_node.velocity = Vector2.ZERO
	
	if controlled_node.input_dir != Vector2.ZERO:
		stateMachine.change_state('stateMove')
