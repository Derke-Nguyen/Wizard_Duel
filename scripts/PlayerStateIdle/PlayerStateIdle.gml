//Description: PlayerStateIdle() - idle player state

if(state_timer == 1){
	knocked_back = false;
	UseBufferedInput();
	
	if(jump_buffer_timer > 0){
		jump_key = true;
	}
}

sprite_index = SPRITE_PLAYER_IDLE;
hspd = 0;
vspd = 0;

if(down_key && place_meeting(x, y + 1, obj_OneWayPlatform)){
	y++;
	StateSwitch(PLAYER_STATES.air);
}

if(right_key){
	if(!place_meeting(x + 1, y, obj_Solid)){
		StateSwitch(PLAYER_STATES.run);
	}
}

if(left_key){
	if(!place_meeting(x - 1, y, obj_Solid)){
		StateSwitch(PLAYER_STATES.run);
	}
}

if(up_key){
	vspd = -jump_speed;
	//audio_play_sound(snd_PlayerJump, 1, false);
	StateSwitch(PLAYER_STATES.air);
}

PlayerCast();