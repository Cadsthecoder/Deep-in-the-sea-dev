if place_meeting(x, y, oTorpedo){
	if enemy_health > 0{
		enemy_health -= 1;
		
		if enemy_health <= 0{
			instance_destroy();
			
			room_goto(Win);
		}
	}
}