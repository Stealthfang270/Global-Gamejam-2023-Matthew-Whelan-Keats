/// @description 

x += xSpeed;
y += ySpeed;

if(x > room_width || x < 0 || y > room_height || y < 0) {
	if(!initDestroy) {
		alarm[0] = 30;
		initDestroy = true;
	}
}