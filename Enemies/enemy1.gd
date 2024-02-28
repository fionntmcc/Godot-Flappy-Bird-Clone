
extends CharacterBody2D

@export var move_speed : float = 200
@export var starting_direction = Vector2(0, 1)

##@onready var animation_tree = $AnimationTree
##@onready var state_machine = animation_tree.get("parameters/playback")

@onready var player_node = get_node("../Player")

##func _ready():
##	animation_tree.set("parameters/Idle/blend_position", starting_direction)

func _physics_process(_delta):
	var input_direction = Vector2(
		player_node.position.x - position.x,
		player_node.position.y - position.y
	)
##	_update_animation_parameters(input_direction)
	
	velocity = move_speed * input_direction.normalized()
	
	move_and_slide()
##	_pick_new_state()
	
##func _pick_new_state():
##	if(velocity == Vector2.ZERO):
##		state_machine.travel("Idle")
##	else:
##		state_machine.travel("Walk")

##func _update_animation_parameters(move_input : Vector2):
##	if(move_input != Vector2.ZERO):
##		animation_tree.set("parameters/Walk/blend_position", move_input)
##		animation_tree.set("parameters/Idle/blend_position", move_input)
