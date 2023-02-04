/// @description 
draw_self();

if(crop != noone) {
	cropSprite = object_get_sprite(crop);
	draw_sprite_ext(cropSprite,0,x,y,image_xscale * 2,image_yscale * 2,0,c_white,1);
}