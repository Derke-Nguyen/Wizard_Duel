GetBufferedInput();
sprite_index = SPRITE_PLAYER_STRONG_PROJECTILE;

if(strong_projectile_state_timer == 0){
	//spawn effect
}

//Animation
//idk

if(strong_projectile_state_timer == strong_attack_state_frames){
	if(place_meeting(x,y + 1, obj_Solid)){
		StateSwitch(PLAYER_STATES.idle);
	}
	else{
		StateSwitch(PLAYER_STATES.air);
	}
}

if(strong_projectile_state_timer > strong_attack_state_frames - buffered_input_frames){
	GetBufferedInput();
}

strong_attack_state_timer++;