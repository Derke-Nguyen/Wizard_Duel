if(obj_Player.player_id == player_creator){
	obj_Player.run_speed = 12;
}

with(player_reference){
	StateSwitch(PLAYER_STATES.air);
}

instance_destroy();