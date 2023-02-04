/// @description


if(!isParagraph) {
	draw_full_text(x, y, halign, valign, font, text, color);
} else {
	draw_full_paragraph_text(x, y, halign, valign, font, text, color, paragraphLineHeight, paragraphWidth);
}