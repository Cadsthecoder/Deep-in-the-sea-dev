if place_meeting(x, y, oTorpedo){
	if enemy_health > 0{
		enemy_health -= 1
	}
}

if enemy_health <= 0{
	instance_destroy();
	
	global.points += 300
}

if (fire_cooldown > 0) {
    fire_cooldown -= 1;
}

if fire_cooldown <= 0{
    instance_create_layer(x + 15, y + 20, "Torpedo", oEnemy_torpedo);
    fire_cooldown = room_speed + 1;
}