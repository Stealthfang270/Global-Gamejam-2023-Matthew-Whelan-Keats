/// @description 

endedRound = false;
enemiesThisRound = irandom_range(minEnemiesThisRound + floor((wave - 1) * 1.5), maxEnemiesThisRound + floor((wave - 1) * 1.5));
spawnDelay = random_range(minSpawnDelay - min((wave - 1) * 15, 300),maxSpawnDelay - min((wave - 1) * 15, 370));
show_debug_message("Wave: " + string(wave));
	
