//Description : WeakProjectileCast() - what happens to the player when they cast an ability

sprite_index = SPRITE_PLAYER_WEAK_PROJECTILE;

//freeze position
hspd = 0;
vspd = 0;

if(weak_projectile_state_timer == 0) {
	//idk
}

PlayerCastCommon();

//once ability ends
if (weak_projectile_state_timer == weak_projectile_state_frames && state_timer >= hit_lag) {
	if (place_meeting(x, y + 1, obj_Solid)) {
		StateSwitch(PLAYER_STATES.idle);
	} else {
		StateSwitch(PLAYER_STATES.air);
	}
}

//Buffer next ability
if(weak_projectile_state_timer > weak_projectile_state_frames - buffered_input_frames){
	GetBufferedInput();
}

weak_projectile_state_timer++;