/// @description 

// Inherit the parent event


if(!hasLeveledUp) {
	switch(level) {
		case 1:
			bouncesLeft = 1;
			break;
		case 2:
			bouncesLeft = 2;
			damage = 2;
			break;
		case 3:
			bouncesLeft = 3;
			grav = 0.10;
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
		if(bouncesLeft <= 0) {
			xSpeed = 0;
			ySpeed = 0;
			rotSpeed = 0;
			
			if(!attemptedDestroy) {
				alarm[0] = 120;
				attemptedDestroy = true;
			}
		} else {
			ySpeed = -10;
			bouncesLeft--;
		}
		
		
	} else {
		y += ySpeed;
		ySpeed += grav;
	}
}