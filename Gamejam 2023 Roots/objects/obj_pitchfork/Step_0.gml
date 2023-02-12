/// @description 

image_angle = point_direction(x,y,mouse_x,mouse_y) - 90;
direction = image_angle + 90;

show_debug_message("Has thrown crop: " + string(threwCrop));

if(!createdCrop && crop != noone && crop != undefined) { 
	cropInst = instance_create_layer(x,y,"Instances",crop);
	with(cropInst) {
		level = other.cropLevel;
	}
	createdCrop = true;
}

if(crop == noone || crop == undefined) {
	threwCrop = true;
}


if(mouse_check_button(mb_left)) {
	charge = min(charge + maxCharge/seconds,maxCharge);
	//show_debug_message("Charge: " + string(charge));
	if(charge > 0.3) {
		startedCharge = true;
	}
	
} else {
	if(startedCharge && !threwCrop && cropInst != noone) {
		with(cropInst) {
			xSpeed = lengthdir_x(12 * other.charge * velocityMultiplier,direction);
			ySpeed = lengthdir_y(12 * other.charge * velocityMultiplier,direction);
			rotSpeed = 10 * other.charge * velocityMultiplier;
			thrown = true;
		}
		audio_play_sound(snd_throw,1,0);
		threwCrop = true;
	}
	charge = max(0, charge - maxCharge * 3/10);
}

x = startPosX - lengthdir_x(charge * chargeDist, direction);
y = startPosY - lengthdir_y(charge * chargeDist, direction);

if(!threwCrop && cropInst != noone) {
	with(cropInst) {
		image_angle = other.image_angle + 90;
		direction = image_angle;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		x = other.x + lengthdir_x(90,direction);
		y = other.y + lengthdir_y(90,direction);
		depth = other.depth -1;
	}
}