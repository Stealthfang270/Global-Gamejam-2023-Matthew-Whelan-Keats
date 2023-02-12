/// @description 

// Inherit the parent event
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
		
		if(!hasPlayedSound) {
			audio_play_sound(snd_plant,1,0);
			hasPlayedSound = true;
		}
		
		if(!attemptedDestroy) {
			alarm[0] = 120;
			if(instance_exists(obj_enemy)) {
				with(obj_enemy) {
					if(y < room_height/4) {
						y += 16;
					}
				}
			}
			attemptedDestroy = true;
		}
		
	} else {
		y += ySpeed;
		ySpeed += grav;
	}
}

if(!hasLeveledUp) {
	switch(level) {
		case 1:
			damage = 3;
			break;
		case 2:
			damage = 5;
			break;
		case 3:
			damage = 99999;
			break;
	}
	hasLeveledUp = true;
}