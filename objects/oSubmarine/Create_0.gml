movement_speed = 2;
projectile_speed = 3;
fire_cooldown = 0;

if (!variable_global_exists("points")){
	global.points = 0
}

if (!variable_global_exists("player_health")){
	global.player_health = 100
}

if (!variable_global_exists("boss_spawned")){
	global.boss_spawned = false
}