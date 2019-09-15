extends Node2D

var screensize
var speed
var velocity = Vector2()

func _ready():
	speed = 150
	screensize = get_viewport_rect().size
	
#	add_state("idle")
#	add_state("walk")
#	add_state("run")
#	add_state("jump_roll")
#	add_state("melee")
#	add_state("bow")
#	add_state("spell")
#	call_deferred("set_state", states.idle)

func _process(delta):
	if Input.is_action_pressed("ui_jump_roll"):
		#Todo add code for jump dash move, als code for run and fighting has to be added 
		pass
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_just_released("ui_left"):
		velocity.x = 0
	if Input.is_action_just_released("ui_right"):
		velocity.x = 0
	if Input.is_action_just_released("ui_up"):
		velocity.y = 0
	if Input.is_action_just_released("ui_down"):
		velocity.y = 0
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta

#func _input(event):
#	if [states.idle, states.walk, states.run, states.melee, states.bow, states.spell, states.jump_roll].has(state):
#		if Input.is_action_pressed("ui_left"):
#			velocity.x -= 1
#		if Input.is_action_pressed("ui_right"):
#			velocity.x += 1
#		if Input.is_action_pressed("ui_up"):
#			velocity.y -= 1
#		if Input.is_action_pressed("ui_down"):
#			velocity.y += 1
#		if Input.is_action_just_released("ui_left"):
#			velocity.x = 0
#		if Input.is_action_just_released("ui_right"):
#			velocity.x = 0
#		if Input.is_action_just_released("ui_up"):
#			velocity.y = 0
#		if Input.is_action_just_released("ui_down"):
#			velocity.y = 0
#		if velocity.length() > 0:
##			velocity = velocity.normalized() * speed
#
#
#func _state_logic(delta):
#	add_state("idle")
#	add_state("walk")
#	add_state("run")
#	add_state("jump_roll")
#	add_state("melee")
#	add_state("bow")
#	add_state("spell")
#	call_deferred("set_state", states.idle)
#	pass
#
#
#func _get_transition(delta):
#	match state:
#		states.idle:
#			if parent.velocity != 0:
#				return states.walk
#		states.walk:
#			if parent.velocity == 0:
#				return states.idle
#		states.run:
#			if parent.velocity == 0:
#				return states.idle
#		states.jump_roll:
#			if velocity == 0:
#				return states.idle
#			elif velocity != 0:
#				return states.walk
#	return null
#
#func _enter_state(new_state, old_state):
#	match new_state:
#		states.idle:
#			play("idle")
#		states.walk:
#			$AnimatedSprite.animation = "walk"
#		states.run:
#			$AnimatedSprite.animation = "run"
#		states.jump_roll:
#			$AnimatedSprite.animation = "jump_roll"
#		states.melee:
#			$AnimatedSprite.animation = "melee"
#		states.bow:
#			$AnimatedSprite.animation = "bow"
#		states.spell:
#			$AnimatedSprite.animation = "spell"
#
#
#func _exit_state(old_state, new_state):
#	pass
