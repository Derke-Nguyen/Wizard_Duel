sprite_index = SPRITE_PLAYER_WEAK_PROJECTILE;

if(weak_projectile_state_timer == 0) {
	image_index = 0;
	//audio_play_sound
	//audio_sound_pitch
	var _shot = instance_create_layer(x,y, "EffectsTop", obj_SimpleProjectile);
	_shot.origin = player_id;
}

//Animation
if(weak_projectile_state_timer >= weak_projectile_state_frames){
	image_index = 1;
}
else{
	image_index = 0;
}

PlayerCastCommon();

if (weak_projectile_state_timer == weak_projectile_state_frames) {
	if (place_meeting(x, y + 1, obj_Solid)) {
		StateSwitch(PLAYER_STATES.idle);
	} else {
		StateSwitch(PLAYER_STATES.air);
	}
}

if(weak_projectile_state_timer > weak_projectile_state_frames - buffered_input_frames){
	GetBufferedInput();
}

weak_projectile_state_timer++;