/// @description 

if(room_get_name(room) == "rm_main") {
	ds_list_clear(crops);
	
	for(i = 0; i < 3; i++) {
		with(obj_crop_space) {
			if(tileSpace == other.i) {
				if(crop != noone) {
					ds_list_add(other.crops, crop.crop);
				}
			}
		}
	}
	
	for(i = 0; i < ds_list_size(crops); i++) {
		show_debug_message(object_get_name(ds_list_find_value(crops,i)));
	}
}