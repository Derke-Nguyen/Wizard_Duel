sprite_index = SPRITE_PLAYER_SELF_CAST;


//freeze position
hspd = 0;
vspd = 0;

PlayerCastCommon();

//Buffer Input to next thing
if(self_cast_state_timer > self_cast_state_frames - buffered_input_frames){
	GetBufferedInput();
}

//switch back to normal state in spell object