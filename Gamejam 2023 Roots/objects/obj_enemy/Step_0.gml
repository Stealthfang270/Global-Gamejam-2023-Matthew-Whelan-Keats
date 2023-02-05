/// @description 

if(invFrames > 0) {
	invFrames--;
	blinkTime--;
	if(blinkTime <= 0) {
		visible = !visible;
		blinkTime = blinkReset;
	}
} else {
	visible = true;
}

if(hp <= 0) {
	global.gold += 1;
	instance_destroy();
}

x += xSpeed;

if(x > room_width) {
	global.health--;
	instance_destroy();
}