/// @description 

// Inherit the parent event
event_inherited();

if(!hasLeveledUp) {
	switch(level) {
		case 1:
			pushBack = 128;
			break;
		case 2:
			pushBack = 256;
			break;
		case 3:
			pushBack = 512;
			damage = 2;
			break;
	}
	hasLeveledUp = true;
}