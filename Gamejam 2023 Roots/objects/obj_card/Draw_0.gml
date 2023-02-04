/// @description 

draw_self();

draw_sprite_ext(cropSprite,0,x,y,image_xscale,image_yscale,0,c_white,1);

draw_full_text(x, y - sprite_height/2, fa_center, fa_bottom, fnt_pix_antiqua, cropName, c_white);
draw_full_text(x + sprite_width/6, y + sprite_height/3.2, fa_center, fa_middle, fnt_pix_antiqua, string(cost), c_white);
draw_full_text(x - sprite_width/6, y + sprite_height/3.2, fa_center, fa_middle, fnt_pix_antiqua, string(turns), c_white);