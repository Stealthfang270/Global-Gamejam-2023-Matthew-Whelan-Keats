/// @description 

// Inherit the parent event
event_inherited();

if(!hasLeveledUp) {
	switch(level) {
		case 1:
			damage = 2;
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