extends stateBase


func  on_physics_process(_delta:float) -> void:
	controlled_node.velocity = controlled_node.input_dir * controlled_node.speed
	if controlled_node.input_dir == Vector2.ZERO:
		stateMachine.change_state('stateIdle')
	if controlled_node.last_dir == Vector2.DOWN: controlled_node.sprite.play('f_run')
	elif controlled_node.last_dir == Vector2.UP: controlled_node.sprite.play('b_run')
	
	elif controlled_node.last_dir == Vector2.LEFT:
		controlled_node.sprite.play('h_run')
		controlled_node.sprite.flip_h = true
	elif controlled_node.last_dir == Vector2.RIGHT:
		controlled_node.sprite.play('h_run')
		controlled_node.sprite.flip_h = false
