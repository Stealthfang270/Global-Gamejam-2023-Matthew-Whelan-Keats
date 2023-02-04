/// @description 

if(crop != noone) {
	sprite_index = spr_crop_full;
	
	if(!createdCrop) {
		crop = instance_create_layer(x,y,"Instances",crop);
		createdCrop = true;
	}
	
	with(crop) {
		tile = other;
	}
}

if(sprite_index == spr_crop_full) {
	if((mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y,self)) || isHeld) {
		isHeld = true;
		x = mouse_x;
		y = mouse_y;
		depth -= 1;
	}
	
	if(mouse_check_button_released(mb_left)) {
		if(place_meeting(x,y,obj_trash)) {
			sprite_index = spr_crop_space;
			crop = noone;
			cropSprite = noone;
		}
		isHeld = false;
		x = startPosX;
		y = startPosY;
	}
}