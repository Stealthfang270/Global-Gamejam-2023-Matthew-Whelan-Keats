/// @description 

// Inherit the parent event
event_inherited();


if(!hasLeveledUp) {
	switch(level) {
		case 1:
			hitsLeft = 2;
			break;
		case 2:
			hitsLeft = 4;
			break;
		case 3:
			hitsLeft = 99999;
			break;
	}
	hasLeveledUp = true;
}

if(place_meeting(x,y,obj_enemy)) {
	if(!grabbedEnemy) {
		enemy = instance_place(x,y,obj_enemy);
		hitsLeft--;
		grabbedEnemy = true;
	}
	
	if(!(instance_place(x,y,obj_enemy) == enemy)) {
		grabbedEnemy = false;
	}
}

if(hitsLeft <= 0) {
	instance_destroy();
}