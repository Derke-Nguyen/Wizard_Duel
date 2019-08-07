sprite_index = SPRITE_PLAYER_SELF_CAST;

hspd = 0;
hspd = 0;

if(self_cast_state_timer == 0) {
	//idk
}

PlayerCastCommon();

if (self_cast_state_timer == self_cast_state_frames && state_timer >= hit_lag) {
	if (place_meeting(x, y + 1, obj_Solid)) {
		StateSwitch(PLAYER_STATES.idle);
	} else {
		StateSwitch(PLAYER_STATES.air);
	}
}

if(self_cast_state_timer > self_cast_state_frames - buffered_input_frames){
	GetBufferedInput();
}

self_cast_state_timer++;