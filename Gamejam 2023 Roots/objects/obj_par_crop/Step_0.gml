/// @description 

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
			attemptedDestroy = true;
		}
		
	} else {
		y += ySpeed;
		ySpeed += grav;
	}
}