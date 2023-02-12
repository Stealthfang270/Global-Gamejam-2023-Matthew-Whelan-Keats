/// @description 

// Inherit the parent event
event_inherited();

if(!hasLeveledUp) {
	switch(level) {
		case 1:
			damage = 2;
			velocityMultiplier = 0.2;
			break;
		case 2:
			damage = 3;
			velocityMultiplier = 0.5;
			break;
		case 3:
			damage = 3;
			velocityMultiplier = 1.2;
			damage = 2;
			break;
	}
	hasLeveledUp = true;
}

if(x < 0 - 50 || x > room_width + 50 || y < 0 -50 || y > room_height + 50) {
	instance_destroy();
}