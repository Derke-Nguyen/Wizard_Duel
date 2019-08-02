GetBufferedInput();
hspd = 0;
vspd = 0;

if(state_timer >= hit_lag){
	
	//move back to current state
	if(weak_attack_state_timer > 0){
		StateSwitch(PLAYER_STATES.spell1);
	}
	else if(strong_attack_state_timer > 0){
		StateSwitch(PLAYER_STATES.spell2);
	}
	
	//if attack state is over(no end lag), go stright to ground or air
	if(weak_attack_state_timer >= weak_attack_state_frames || strong_attack_state_timer >= strong_attack_state_frames){
		if(place_meeting(x,y+1, obj_Solid) || PlatformBelow()){
			if(right_key || left_key){
				StateSwitch(PLAYER_STATES.run);
			}
			else{
				StateSwitch(PLAYER_STATES.idle);
			}
		}
		else{
			StateSwitch(PLAYER_STATES.air);
		}
	}
	

}