/// @description 

// Inherit the parent event
if(!hasLeveledUp) {
	switch(level) {
		case 1:
			turnSpeed = 1;
			break;
		case 2:
			turnSpeed = 2;
			damage = 4;
			velocityMultiplier = 1.2;
			break;
		case 3:
			turnSpeed = 4;
			damage = 5;
			velocityMultiplier = 1.5;
	}
}

if(thrown) {
	if(!targeted) {
		if(instance_exists(obj_enemy)) {
			target = instance_nearest(x,y,obj_enemy);
			targeted = true;
		}
	}
	
	if(abs(ySpeed) > abs(xSpeed)) {
		xSpeed = ySpeed;
	} else {
		ySpeed = xSpeed;
	}
	
	
	
	if(target != noone) {
		if(instance_exists(target)) {
			dirTo = point_direction(x,y, target.x, target.y);
		}
	} else {
		dirTo = direction;
	}
	
	if(direction != dirTo) {
		direction += turnSpeed * sign(dirTo - direction);
	}
	image_angle = direction - 225;
	
	x -= lengthdir_x(xSpeed, direction);
	if(place_meeting(x,y + ySpeed, obj_ground)) {
		while(!place_meeting(x, y + 1, obj_ground)) {
			y += 1;
		}
		xSpeed = 0;
		ySpeed = 0;
		rotSpeed = 0;
		if(!hasPlayedSound) {
			audio_play_sound(snd_plant,1,0);
			hasPlayedSound = true;
		}
		
		if(!attemptedDestroy) {
			alarm[0] = 120;
			attemptedDestroy = true;
		}
		
	} else {
		y -= lengthdir_y(ySpeed, direction);
		ySpeed += grav;
	}
}