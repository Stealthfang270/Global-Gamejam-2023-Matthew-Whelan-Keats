/// @description 
var inst = instance_place(x,y,obj_par_crop);
if(invFrames <= 0 && inst.damage > 0) {
	hp -= inst.damage;
	invFrames = invFramesReset
	audio_play_sound(snd_hit,1,0);
}