/// @description 

if(room_get_name(room) == "rm_main") {
	if(instance_exists(obj_pitchfork)) {
		if(obj_pitchfork.threwCrop && !triggeredCycle) {
			triggeredCycle = true;
			alarm[0] = 60;
		} else if (obj_pitchfork.threwCrop = false) {
			triggeredCycle = false;
		}
	} else {
		show_debug_message("Pitchfork object not found!");
	}
}