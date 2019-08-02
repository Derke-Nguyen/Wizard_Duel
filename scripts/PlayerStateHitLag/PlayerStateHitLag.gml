GetBufferedInput();
hspd = 0;
vspd = 0;

if(state_timer >= hit_lag){
	
	//move back to current state
	if(weak_projectile_state_timer > 0){
		StateSwitch(PLAYER_STATES.weakprojectile);
	}
	else if(strong_projectile_state_timer > 0){
		StateSwitch(PLAYER_STATES.strongprojectile);
	}
	
	//if attack state is over(no end lag), go stright to ground or air
	if(weak_projectile_state_timer >= weak_projectile_state_frames || strong_projectile_state_timer >= strong_projectile_state_frames){
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