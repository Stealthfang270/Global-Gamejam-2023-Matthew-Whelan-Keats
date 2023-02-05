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
	NUM
}

randomize();

//Right now this cycles through all crops. Later have it cycle based on the current wave
randCrop = irandom_range(0, Crop_Types.NUM - 1);
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
}

