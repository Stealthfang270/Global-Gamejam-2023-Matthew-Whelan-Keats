/// @description 

// Inherit the parent event
event_inherited();

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