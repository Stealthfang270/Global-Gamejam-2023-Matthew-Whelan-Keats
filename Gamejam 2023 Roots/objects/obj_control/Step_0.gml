/// @description 

global.wave = wave;

if(room_get_name(room) == "rm_main") {
	if(instance_exists(obj_pitchfork)) {
		if(obj_pitchfork.threwCrop && !triggeredCycle) {
			triggeredCycle = true;
			alarm[0] = 60;
		} else if (obj_pitchfork.threwCrop == false) {
			triggeredCycle = false;
		}
	} else {
		show_debug_message("Pitchfork object not found!");
	}
	
	
	#region spawn wave
	
	spawnDelay--;
	
	if(spawnDelay <= 0 && enemiesThisRound > 0) {
		with(instance_create_layer(-50, random_range(0,room_height/2),"Instances",obj_enemy)) {
			hp = irandom_range(other.enemyMinHP + (floor(other.wave / 3)), other.enemyMaxHP + (floor(other.wave / 3)));
			xSpeed *= random_range(0.8 + (other.wave -1) * 0.1, 1.2 + (other.wave -1) * 0.1);
		}
		enemiesThisRound--;
		spawnDelay = random_range(minSpawnDelay - min((wave - 1) * 30, 270),maxSpawnDelay - min((wave - 1) * 30, 370));
		
		if(enemiesThisRound <= 0 && !endedRound) {
			wave++;
			endedRound = true;
			show_debug_message("The Round Has Ended");
		}
	}
	
	if(endedRound && !instance_exists(obj_enemy) && !attemptedLeave) {
		attemptedLeave = true;
		alarm[2] = 120;
	}
	
	#endregion
	
	if(global.health <= 0) {
		room_goto(rm_gameover);
	}
}