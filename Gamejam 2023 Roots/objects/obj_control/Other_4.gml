/// @description 

if(room_get_name(room) == "rm_main") {
	ds_list_clear(crops);
	ds_list_clear(levels);
	
	for(i = 0; i < 3; i++) {
		with(obj_crop_space) {
			if(tileSpace == other.i) {
				if(crop != noone) {
					ds_list_add(other.crops, crop.crop);
					ds_list_add(other.levels, crop.level);
				}
			}
		}
	}
}