GetBufferedInput();
hspd = 0;
vspd = 0;

if(state_timer >= hit_lag){
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