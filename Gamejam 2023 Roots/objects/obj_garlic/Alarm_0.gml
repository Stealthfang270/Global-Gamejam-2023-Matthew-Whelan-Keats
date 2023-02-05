/// @description 

// Inherit the parent event
if(variable_instance_exists(self, "enemy")) {
	with(enemy) {
		x -= other.pushBack;
	}
}

event_inherited();

