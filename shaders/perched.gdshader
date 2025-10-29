shader_type canvas_item;
uniform bool is_perched = false;

void fragment() {
	//COLOR = texture(TEXTURE, UV); // Read from texture again.
	if(is_perched) {
		COLOR.r = 255.0;
	}
}

