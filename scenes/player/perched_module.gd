extends Node

@export
var actor: CharacterBody2D
@export
var sprite: Sprite2D

signal perch_status_changed(is_perched: bool)
var is_perched: bool = false

func _physics_process(_delta: float) -> void:
	if actor.is_on_floor() or actor.is_on_ceiling():
		sprite.material.set_shader_parameter("is_perched", true)
		_process_perch(true)
	else:
		sprite.material.set_shader_parameter("is_perched", false)
		_process_perch(false)

func _process_perch(is_perched: bool) -> void:
	if self.is_perched != is_perched:
		perch_status_changed.emit(is_perched)
	self.is_perched = is_perched
