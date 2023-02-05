/// @description 

endedRound = false;
enemiesThisRound = irandom_range(minEnemiesThisRound + (wave - 1) * 2, maxEnemiesThisRound + (wave - 1) * 2);
spawnDelay = random_range(minSpawnDelay - min((wave - 1) * 30, 300),maxSpawnDelay - min((wave - 1) * 30, 400));
show_debug_message("Wave: " + string(wave));
	
