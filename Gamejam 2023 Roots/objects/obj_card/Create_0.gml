/// @description 

startX = x;
startY = y;

randCrop = 0;

isHeld = false;

enum Crop_Types {
	carrot,
	potato,
	blueberry,
	tomato,
	beetroot,
	dragonfruit,
	garlic,
	watermelon,
	daikon,
	ginger,
	NUM
}

randomize();

if(global.wave < 4) {
	//tier 1 crops
	randCrop = irandom_range(0, Crop_Types.beetroot);
} else if (global.wave >= 4 && global.wave < 7) {
	//tier 2 crops
	randCrop = irandom_range(0, Crop_Types.watermelon);
} else {
	//tier 3 crops
	randCrop = irandom_range(0, Crop_Types.NUM - 1);
}
show_debug_message(randCrop);


switch(randCrop) {
	case Crop_Types.carrot:
		cropName = "carrot";
		cost = 2;
		turns = 1;
		crop = obj_carrot_tile;
		cropSprite = spr_carrot;
		break;
	case Crop_Types.potato:
		cropName = "potato";
		cost = 3;
		turns = 2;
		crop = obj_potato_tile;
		cropSprite = spr_potato;
		break;
	case Crop_Types.blueberry:
		cropName = "blueberry";
		cost = 3;
		turns = 2;
		crop = obj_blueberries_tile;
		cropSprite = spr_blueberries;
		break;
	case Crop_Types.tomato:
		cropName = "tomato";
		cost = 3;
		turns = 1;
		crop = obj_tomato_tile;
		cropSprite = spr_tomato;
		break;
	case Crop_Types.beetroot:
		cropName = "beetroot";
		cost = 4;
		turns = 1;
		crop = obj_beetroot_tile;
		cropSprite = spr_beetroot;
		break;
	case Crop_Types.dragonfruit:
		cropName = "dragonfruit";
		cost = 8;
		turns = 2;
		crop = obj_dragonfruit_tile;
		cropSprite = spr_dragonfruit;
		break;
	case Crop_Types.garlic:
		cropName = "garlic";
		cost = 6;
		turns = 2;
		crop = obj_garlic_tile;
		cropSprite = spr_garlic;
		break;
	case Crop_Types.watermelon:
		cropName = "watermelon";
		cost = 6;
		turns = 3;
		crop = obj_watermelon_tile;
		cropSprite = spr_watermelon;
		break;
	case Crop_Types.daikon:
		cropName = "daikon";
		cost = 12;
		turns = 3;
		crop = obj_daikon_tile;
		cropSprite = spr_daikon;
		break;
	case Crop_Types.ginger:
		cropName = "ginger";
		cost = 10;
		turns = 1;
		crop = obj_ginger_tile;
		cropSprite = spr_ginger;
		break;
}

