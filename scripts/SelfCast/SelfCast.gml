//Description : SelfCast() - when a player does a self cast ability

sprite_index = SPRITE_PLAYER_SELF_CAST;

//freeze position
hspd = 0;
vspd = 0;

if(self_cast_state_timer == 0) {
	//idk
}

PlayerCastCommon();

//once the frames for ability ends
if (self_cast_state_timer == self_cast_state_frames && state_timer >= hit_lag) {
	if (place_meeting(x, y + 1, obj_Solid)) {
		StateSwitch(PLAYER_STATES.idle);
	} else {
		StateSwitch(PLAYER_STATES.air);
	}
}

//Buffer Input to next thing
if(self_cast_state_timer > self_cast_state_frames - buffered_input_frames){
	GetBufferedInput();
}

self_cast_state_timer++;