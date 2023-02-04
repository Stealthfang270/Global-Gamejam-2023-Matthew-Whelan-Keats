/// @description 
draw_self();

if(crop != noone) {
	if(!createdCrop) {
		cropSprite = object_get_sprite(crop);
	}
	draw_sprite_ext(cropSprite,0,x,y,image_xscale * 2,image_yscale * 2,0,c_white,1);
	
	if(createdCrop) {
		draw_pie(x - sprite_width/3, y + sprite_height/3, crop.time, crop.maxTime, c_white, 10, 1);
		
		if (position_meeting(mouse_x, mouse_y, self) && !isHeld) {
			switch(crop.level) {
				case 1: 
					draw_full_paragraph_text(x, y+sprite_height * 0.8,fa_center,fa_center,fnt_pix_antiqua_small,crop.descriptionLvl1,c_white,20,200);
					break;
				case 2:
					draw_full_paragraph_text(x, y+sprite_height * 0.8,fa_center,fa_center,fnt_pix_antiqua_small,crop.descriptionLvl2,c_white,20,200);
					break;
				case 3:
					draw_full_paragraph_text(x, y+sprite_height * 0.8,fa_center,fa_center,fnt_pix_antiqua_small,crop.descriptionLvl3,c_white,20,200);
					break;
			}
		}
		
		draw_healthbar(x - sprite_height/2, y - sprite_height/2, x + sprite_height/2, y - sprite_height/2.5, 
		(-crop.toNextLevel + 3)/3 * 100, c_black, c_green, c_green, 0, true, false);
	}
}


