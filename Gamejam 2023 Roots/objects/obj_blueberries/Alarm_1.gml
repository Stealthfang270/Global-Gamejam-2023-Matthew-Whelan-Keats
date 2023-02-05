/// @description 

for(i = 0; i < split; i++) {
	var berry = instance_create_layer(x,y,"Instances",obj_bberry);
	with (berry) {
		thrown = true;
		image_angle = other.image_angle;
		image_xscale = 2;
		image_yscale = 2;
			
		direction = random_range(other.direction + 60, other.direction);
		xSpeed = -lengthdir_x(other.xSpeed,direction);
		ySpeed = random_range(ySpeed, ySpeed - 5);
	}
}
instance_destroy(self);