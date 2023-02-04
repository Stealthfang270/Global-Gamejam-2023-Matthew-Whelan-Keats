// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_full_text(xPos, yPos, halign, valign, fnt, text, color){
	draw_set_halign(halign);
	draw_set_valign(valign);
	draw_set_font(fnt);
	draw_set_color(color);
	
	draw_text(xPos, yPos, text);
}

function draw_full_paragraph_text(xPos, yPos, halign, valign, fnt, text, color, lineDist, maxWidth){
	draw_set_halign(halign);
	draw_set_valign(valign);
	draw_set_font(fnt);
	draw_set_color(color);
	
	draw_text_ext(xPos, yPos, text, lineDist, maxWidth);
}