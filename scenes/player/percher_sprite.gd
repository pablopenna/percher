extends Sprite2D

@export
var plane_texture: Texture2D
@export
var percher_texture: Texture2D

func _on_perched_module_perch_status_changed(is_perched: bool) -> void:
	if is_perched:
		self.texture = percher_texture
	else:
		self.texture = plane_texture
