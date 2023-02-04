/// @description 


if(ds_list_size(crops) > 0) {
	with(obj_pitchfork) {
		crop = ds_list_find_value(other.crops, other.placeInList);
		cropLevel = ds_list_find_value(other.levels, other.placeInList);
		show_debug_message(ds_list_find_value(other.levels, other.placeInList));
		createdCrop = false;
		startedCharge = false;
		threwCrop = false;
	}
	placeInList++;
	if(placeInList > ds_list_size(crops) - 1) {
		placeInList = 0;
	}
}