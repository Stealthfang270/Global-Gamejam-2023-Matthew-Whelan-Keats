/// @description 

if(position_meeting(mouse_x, mouse_y,self)) {
	image_index = 1;
	
	if(mouse_check_button_pressed(mb_left)) {
		//Activate button based on type
		if(playSound != noone) {
			audio_play_sound(playSound,1,0);
		}
		
		switch(buttonType) {
			case ButtonType.goto:
				room_goto(roomTo);
				break;
			case ButtonType.runscript:
				script_execute(scr);
				break;
			case ButtonType.quit:
				game_end();
				break;
		}
	}
} else {
	image_index = 0;
}