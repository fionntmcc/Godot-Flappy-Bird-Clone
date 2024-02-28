extends CharacterBody2D

@export var move_speed : float = 100
@onready var player = get_tree().get_first_node_in_group("player")

##@onready var animation_tree = $AnimationTree
##@onready var state_machine = animation_tree.get("parameters/playback")

##	animation_tree.set("parameters/Idle/blend_position", starting_direction)

func _physics_process(_delta):
	if player:
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * move_speed
		move_and_slide()
		

