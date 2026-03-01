x -= projectile_speed

if place_meeting(x, y, oTerrain){
	instance_destroy();
}

if place_meeting(x, y, oTerrain2){
	instance_destroy();
}

if place_meeting(x, y, oTerrain3){
	instance_destroy();
}

if place_meeting(x, y, oTerrain4){
	instance_destroy();
}

if place_meeting(x, y, oTorpedo){
	instance_destroy();
}

projectile_speed += 1;