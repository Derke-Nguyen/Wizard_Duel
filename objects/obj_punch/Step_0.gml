if(distance > 0){
	if(directionOf > 0){
		x += 20;
	}
	else{
		x -= 20;
	}
}

if(distance <= 0){
	with(player_reference){
		run_speed = 12;
		if (place_meeting(x, y + 1, obj_Solid)) {
			StateSwitch(PLAYER_STATES.idle);
		} else {
			StateSwitch(PLAYER_STATES.air);
		}
	}
	instance_destroy();
}

--distance;
