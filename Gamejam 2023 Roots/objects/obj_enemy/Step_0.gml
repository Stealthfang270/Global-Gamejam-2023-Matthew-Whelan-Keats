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
	instance_destroy();
}

x += xSpeed;