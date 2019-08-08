//Description: PlayerStateRun() - when the player runs

if(state_timer == 1){
	knocked_back = false;
	UseBufferedInput();
	
	if(jump_buffer_timer > 0){
		jump_key = true;
	}
	image_index = 0;
}

if(image_index == round(image_index)){
	//scr_sound_player_step();
}

sprite_index = SPRITE_PLAYER_RUN;

//Run
if (right_key) {
	image_xscale = 1;
	if (hspd < run_speed) {
		hspd += ground_acceleration;
	}
	if (hspd > run_speed) {
		hspd = run_speed;
	}
} 

if (left_key) {
	image_xscale = -1;
	if (hspd > -run_speed) {
		hspd -= ground_acceleration;
	}
	if (hspd < -run_speed) {
		hspd = -run_speed;
	}
}

//Stop
if (!right_key && !left_key || right_key && left_key) {
	if (hspd >= ground_deceleration) {
		hspd -= ground_deceleration;
	}
	if (sign(hspd) ==  1 && hspd < ground_deceleration) {
		hspd = 0;
	}
	
	if (hspd <= -ground_deceleration) {
		hspd += ground_deceleration;
	}
	if (sign(hspd) == -1 && hspd > -ground_deceleration) {
		hspd = 0;
	}
}

// HORIZONTAL
if (place_meeting(x + hspd, y, obj_Solid)) {
	while (!place_meeting(x + sign(hspd), y, obj_Solid)) {
		x += sign(hspd);
	}
	hspd = 0;
}

x += hspd;

// VERTICAL
if (!PlatformBelow() && (!place_meeting(x-2, y + 1, obj_Solid) || !place_meeting(x+2, y + 1, obj_Solid))) {
	StateSwitch(PLAYER_STATES.air);
}

if (hspd = 0) {
	StateSwitch(PLAYER_STATES.idle);
}

if(down_key && place_meeting(x,y +1, obj_OneWayPlatform)){
	y++;
	StateSwitch(PLAYER_STATES.air);
}

if (up_key) {
	vspd = -jump_speed;
	//audio_play_sound(sndPlayerJump, 1, false);
	StateSwitch(PLAYER_STATES.air);
}

PlayerCast();
