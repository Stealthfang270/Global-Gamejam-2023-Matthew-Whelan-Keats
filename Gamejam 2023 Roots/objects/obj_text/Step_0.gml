/// @description 
if(tracker) {
	text = "Health: " + string(global.health);
}

if(trackGold) {
	text = string(global.gold);
}

if(tips) {
	
	if(!hasRandomized) {
		randomize();
		num = irandom_range(0, 9);
		hasRandomized = true;
	}
	//text = "test";
	show_debug_message(num);
	
	switch (num) {
		case 0:
			text = "Hold down click to charge for longer!";
			break;
		case 1:
			text = "You can upgrade crops by dragging crops from the shop of the same type onto them";
			break;
		case 2:
			text = "Aim the mouse pointer to point your pitchfork";
			break;
		case 3:
			text = "Birds get faster, more health, and appear more often as waves go on";
			break;
		case 4:
			text = "If you have no crops grown, you'll have a carrot by default";
			break;
		case 5:
			text = "As you progress through the waves, you'll unlock better and better crops";
			break;
		case 6:
			text = "Sometimes it's better to have one really good crop than 3 alright crops";
			break;
		case 7:
			text = "You get 1 gold per crow you defeat";
			break;
		case 8:
			text = "Each crop has a different effect. Make the best use of their effects!"
			break;
		case 9:
			text = "Each crop takes a certain number of turns to grow. The number next to the blue circle shows that";
			break;
	}
}