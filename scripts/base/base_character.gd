class_name character extends CharacterBody2D


var speed:float = 200.0
var input_dir:Vector2 = Vector2.ZERO
var last_dir:Vector2 = Vector2.DOWN
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var raycast: RayCast2D = $RayCast2D
@onready var stateMachine: StateMachine = $StateMachine

func _physics_process(_delta: float) -> void:
	input_dir= Input.get_vector('LEFT', "RIGHT", "UP", "DOWN")
	input_dir = input_dir.normalized()
	if input_dir != Vector2.ZERO:
		last_dir = input_dir.normalized()
		
	raycast.transform = raycast.transform.looking_at(last_dir)
	
	move_and_slide()
	
func pause():
	stateMachine.change_state('statePause')
	
