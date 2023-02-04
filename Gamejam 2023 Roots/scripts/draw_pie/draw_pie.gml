// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_pie(x ,y ,value, max, colour, radius, transparency){
	
	if (value > 0) {
	    var i, len, tx, ty, val;
    
	    var numberofsections = 60
	    var sizeofsection = 360/numberofsections
    
	    val = (value/max) * numberofsections 
    
	    if (val > 1) {
    
	        draw_set_colour(colour);
	        draw_set_alpha(transparency);
        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(x, y);
        
	        for(i=0; i<=val; i++) {
	            len = (i*sizeofsection)+90;
	            tx = lengthdir_x(radius, len);
	            ty = lengthdir_y(radius, len);
	            draw_vertex(x+tx, y+ty);
	        }
	        draw_primitive_end();
        draw_set_alpha(1);
		}
	}
}