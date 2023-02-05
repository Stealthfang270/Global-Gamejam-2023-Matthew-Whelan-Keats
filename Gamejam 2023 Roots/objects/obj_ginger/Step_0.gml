/// @description 

// Inherit the parent event
event_inherited();

if(!hasLeveledUp) {
	switch(level) {
		case 1:
			shootRate = 8;
			bulletDamage = 2;
			break;
		case 2:
			shootRate = 4;
			bulletDamage = 3;
			damage = 4;
			break;
		case 3:
			shootRate = 2;
			bulletDamage = 4;
			damage = 5;
			break;
	}
	hasLeveledUp = true;
}

if(thrown) {
	if(!initializedCountdown) {
		countDown = 1;
		initializedCountdown = true;
	}
	countDown--;

	if(countDown <= 0) {
		with(instance_create_layer(x,y,"Instances",obj_ball)) {
			direction = random_range(0, 360);
			xSpeed = lengthdir_x(4,direction);
			ySpeed = lengthdir_y(4,direction);
			damage = other.bulletDamage;
		}
		countDown = shootRate;
	}
}