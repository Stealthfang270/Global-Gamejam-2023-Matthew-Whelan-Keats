/// @description 

// Inherit the parent event
event_inherited();

if(!hasLeveledUp) {
	switch(level) {
		case 1:
			explosionSize = 6;
			explosionDamage = 2;
			break;
		case 2:
			explosionSize = 12;
			explosionDamage = 2;
			break;
		case 3:
			explosionSize = 16;
			explosionDamage = 4;
			break;
	}
	hasLeveledUp = true;
}
