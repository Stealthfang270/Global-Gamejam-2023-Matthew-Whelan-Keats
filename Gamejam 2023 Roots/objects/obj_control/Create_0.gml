/// @description 

global.gold = 3;
global.health = 20;
global.wave = 1;

triggeredCycle = false;
endedRound = false;
attemptedLeave = false;
crops = ds_list_create();
levels = ds_list_create();
placeInList = 0;
wave = 1;


//wave variables
spawnDelay = 0;
maxSpawnDelay = 400;
minSpawnDelay = 300;
enemiesThisRound = 0;
minEnemiesThisRound = 3;
maxEnemiesThisRound = 5;
enemyMinHP = 1;
enemyMaxHP = 3;



//Crops

//enum crops {
//	carrot,
//	potato,
//	tomato,
//	blueberry,
//	watermelon,
//	etc //Add more later
//}