/// @description 

crop.toNextLevel--;
if(crop.toNextLevel == 0) {
	crop.level = min(3, crop.level + 1);
	if(crop.level != 3) {
		crop.toNextLevel = 3;
	}
}