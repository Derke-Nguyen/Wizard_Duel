if(distance > 0){
	if(directionOf > 0){
		x += 20;
	}
	else{
		x -= 20;
	}
}
--distance;
if(distance == 0){
	if(obj_Player.player_id == player_creator){
		obj_Player.run_speed = 12;
	}
	instance_destroy();
}