//Description : StrongProjectileCast - what happens to the player when they cast a strong projectile

GetBufferedInput();
sprite_index = SPRITE_PLAYER_STRONG_PROJECTILE;

//freeze position
vspd = 0;
hspd = 0;

if(strong_projectile_state_timer == 0){
	//idk
}

//when the ability ends, switch states
if(strong_projectile_state_timer == strong_projectile_state_frames && state_timer >= hit_lag){
	if(place_meeting(x,y + 1, obj_Solid)){
		StateSwitch(PLAYER_STATES.idle);
	}
	else{
		StateSwitch(PLAYER_STATES.air);
	}
}

//get next buffered ability
if(strong_projectile_state_timer > strong_projectile_state_frames - buffered_input_frames){
	GetBufferedInput();
}

strong_projectile_state_timer++;