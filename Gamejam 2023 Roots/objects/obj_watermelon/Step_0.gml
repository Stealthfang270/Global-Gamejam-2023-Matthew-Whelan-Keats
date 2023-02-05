/// @description 

if(!hasLeveledUp) {
	switch(level) {
		case 1:
			image_scaling = 0.02;
			damage_scaling = 0.02;
			break;
		case 2:
			image_scaling = 0.04;
			damage_scaling = 0.04;
			break;
		case 3:
			image_scaling = 0.08;
			damage_scaling = 0.08;
			grav = 0.15;
			break;
	}
	hasLeveledUp = true;
}

if(thrown) {
	image_angle += rotSpeed;
	x += xSpeed;
	if(place_meeting(x,y + ySpeed, obj_ground)) {
		while(!place_meeting(x, y + 1, obj_ground)) {
			y += 1;
		}
		xSpeed = 0;
		ySpeed = 0;
		rotSpeed = 0;
		image_scaling = 0;
		damage_scaling = 0;
		
		if(!attemptedDestroy) {
			alarm[0] = 120;
			attemptedDestroy = true;
		}
		
	} else {
		y += ySpeed;
		ySpeed += grav;
		
		image_xscale += image_scaling;
		image_yscale += image_scaling;
		damage += damage_scaling;
	}
}