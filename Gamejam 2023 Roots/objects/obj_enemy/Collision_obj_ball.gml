/// @description 
var inst = instance_place(x,y,obj_ball);
if(invFrames <= 0) {
	hp -= inst.damage;
	invFrames = invFramesReset
}