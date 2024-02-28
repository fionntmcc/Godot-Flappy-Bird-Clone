
extends CharacterBody2D

@export var move_speed : float = 200
@export var starting_direction = Vector2(0, 1)
var player
##@onready var animation_tree = $AnimationTree
##@onready var state_machine = animation_tree.get("parameters/playback")



func _ready():
	player = get_node("/../Player")
##	animation_tree.set("parameters/Idle/blend_position", starting_direction)

func _physics_process(_delta):
	if player:
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * move_speed * _delta
		move_and_slide()
		
##	_update_animation_parameters(input_direction)
	
	

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
