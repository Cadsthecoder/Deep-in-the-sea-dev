if keyboard_check(ord("W")){
    if (!place_meeting(x, y - movement_speed, oTerrain)
    && !place_meeting(x, y - movement_speed, oTerrain2)
    && !place_meeting(x, y - movement_speed, oTerrain3)
    && !place_meeting(x, y - movement_speed, oTerrain4)) {
        y -= movement_speed;
    }
}

if keyboard_check(ord("S")){
    if (!place_meeting(x, y + movement_speed, oTerrain)
    && !place_meeting(x, y + movement_speed, oTerrain2)
    && !place_meeting(x, y + movement_speed, oTerrain3)
    && !place_meeting(x, y + movement_speed, oTerrain4)) {
        y += movement_speed;
    }
}

if keyboard_check(ord("D")){
    if (!place_meeting(x + movement_speed, y, oTerrain)
    && !place_meeting(x + movement_speed, y, oTerrain2)
    && !place_meeting(x + movement_speed, y, oTerrain3)
    && !place_meeting(x + movement_speed, y, oTerrain4)) {
        x += movement_speed;
    }
}

if keyboard_check(ord("A")){
    if (!place_meeting(x - movement_speed, y, oTerrain)
    && !place_meeting(x - movement_speed, y, oTerrain2)
    && !place_meeting(x - movement_speed, y, oTerrain3)
    && !place_meeting(x - movement_speed, y, oTerrain4)) {
        x -= movement_speed;
    }
}


if place_meeting(x, y, oTrap){
		global.player_health -= 1
		if global.player_health <= 0{
		room_restart()   
	}
}

if place_meeting(x, y, oEnemy_torpedo){
    room_restart()
}

var levels = [Level1, Level2, Level3, Level4, Level5]

if (x > room_width){
    var pick = irandom(array_length(levels) - 1);
    room_goto(levels[pick]);
}

if (fire_cooldown > 0) {
    fire_cooldown -= 1;
}

if (keyboard_check_pressed(vk_space) && fire_cooldown <= 0) {
    instance_create_layer(x + 15, y + 20, "Torpedo", oTorpedo);
    fire_cooldown = room_speed;
}