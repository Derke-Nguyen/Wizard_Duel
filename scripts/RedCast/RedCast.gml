if(spell1_key){
	weak_projectile_state_timer = 0;
	strong_projectile_state_timer = 0;
	StateSwitch(PLAYER_STATES.weakprojectile);
	image_index = 0;
	//audio_play_sound
	//audio_sound_pitch
	var _shot = instance_create_layer(x,y, "EffectsTop", obj_SimpleProjectile);
	_shot.origin = player_id;
	_shot.hspeed *= image_xscale;
	_shot.image_index = 1;
	//spell effects right here
}

if(spell2_key){
	weak_projectile_state_timer = 0;
	strong_projectile_state_timer = 0;
	StateSwitch(PLAYER_STATES.weakprojectile);
	//spell effects right here
}

if(spell3_key){
	weak_projectile_state_timer = 0;
	strong_projectile_attack_charge = 0;
	//play audio
	StateSwitch(PLAYER_STATES.strongprojectile);
	//spell effects
}