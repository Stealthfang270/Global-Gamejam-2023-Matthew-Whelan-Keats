/// @description 

show_debug_message(room_get_name(room));

if(room_get_name(room) != "rm_crops") {
	visible = false;
	y += 500;
} else {
	visible = true;
	if(y > room_height) {
		y -= 500;
	}
	if(crop != noone && createdCrop) {
		crop.time = max(0, crop.time - 1);
	}
}