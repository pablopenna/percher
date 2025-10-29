extends Node

@export
var actor: CharacterBody2D
const SPEED = 300;
const PERCHED_SPEED = 450;

var is_perched = false
	
func _physics_process(_delta: float) -> void:
	var input_x := Input.get_axis("player_left", "player_right")
	var input_y := Input.get_axis("player_up", "player_down")
	
	var speed := PERCHED_SPEED if self.is_perched else SPEED
	
	actor.velocity = Vector2(
		input_x * speed, 
		input_y * speed if not self.is_perched else 0.0
	)

func _on_perched_module_perch_status_changed(is_perched: bool) -> void:
	self.is_perched = is_perched
