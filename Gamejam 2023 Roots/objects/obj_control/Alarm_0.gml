/// @description 


if(ds_list_size(crops) > 0) {
	with(obj_pitchfork) {
		if(ds_list_find_value(other.crops, other.placeInList) == noone || ds_list_find_value(other.crops, other.placeInList) == undefined) {
			crop = obj_carrot;
			cropLevel = 1;
		} else {
			crop = ds_list_find_value(other.crops, other.placeInList);
			cropLevel = ds_list_find_value(other.levels, other.placeInList);
		}
		show_debug_message("Alarm was triggered");
		createdCrop = false;
		startedCharge = false;
		threwCrop = false;
	}
	placeInList++;
	if(placeInList > ds_list_size(crops) - 1) {
		placeInList = 0;
	}
} else {
	with(obj_pitchfork) {
		crop = obj_carrot;
		cropLevel = 1;
		createdCrop = false;
		startedCharge = false;
		threwCrop = false;
	}
}