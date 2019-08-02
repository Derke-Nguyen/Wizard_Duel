if(state_timer == 1){
	//scr_sound_hit();
}

GetBufferedInput();
hspd = 0;
vspd = 0;

if(state_timer >= hurt_lag){
	hspd = hkb;
	vspd = vkb;
	hkb = 0;
	vkb = 0;
	hurt_lag = 0;
	invincible = invincible_max;
	
	knocked_back = true;
	StateSwitch(PLAYER_STATES.air);
}