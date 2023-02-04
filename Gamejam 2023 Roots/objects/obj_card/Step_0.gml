/// @description 


if((mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y,self)) || isHeld) {
	isHeld = true;
	x = mouse_x;
	y = mouse_y;
	depth -= 1;
}
	
if(mouse_check_button_released(mb_left)) {
	isHeld = false;
	if(place_meeting(x,y,obj_crop_space) && global.gold >= cost) {
		if(instance_place(x,y,obj_crop_space).sprite_index == spr_crop_space) {
			global.gold -= cost;
			with(instance_place(x,y,obj_crop_space)) {
				crop = other.crop;
			}
			instance_destroy();
		}
	}
	x = startX;
	y = startY;
	depth = 0;
}
