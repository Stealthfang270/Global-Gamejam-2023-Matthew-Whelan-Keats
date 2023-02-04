/// @description 
draw_self();

if(crop != noone) {
	if(!createdCrop) {
		cropSprite = object_get_sprite(crop);
	}
	draw_sprite_ext(cropSprite,0,x,y,image_xscale * 2,image_yscale * 2,0,c_white,1);
	
	if(createdCrop) {
		draw_pie(x - sprite_width/3, y + sprite_height/3, crop.time, crop.maxTime, c_white, 10, 1);
	}
}

