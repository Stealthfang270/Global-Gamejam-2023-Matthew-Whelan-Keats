/// @description 


if(ds_list_size(crops) > 0) {
	with(obj_pitchfork) {
		crop = ds_list_find_value(other.crops, other.placeInList);
		createdCrop = false;
		startedCharge = false;
		threwCrop = false;
	}
	placeInList++;
	if(placeInList > ds_list_size(crops) - 1) {
		placeInList = 0;
	}
}