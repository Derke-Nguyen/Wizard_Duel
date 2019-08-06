//All spell1's are basically the same
if(spell1_key && (mp_current >= spell1_cost)){
	weak_projectile_state_timer = 0;
	strong_projectile_state_timer = 0;
	StateSwitch(PLAYER_STATES.weakprojectile);
	image_index = 0;
	//audio_play_sound
	//audio_sound_pitch
	var _shot = instance_create_layer(x,y, "EffectsTop", obj_SimpleProjectile);
	_shot.origin = player_id;
	_shot.hspeed *= image_xscale;
	switch(color_current){
		case COLOR.red:
			_shot.image_index = 1;
			break;
		case COLOR.blue:
			_shot.image_index = 2;
			break;
		case COLOR.orange:
			_shot.image_index = 3;
			break;
		case COLOR.purple:
			_shot.image_index = 4;
			break;
		default:
			break;
	};
	mp_current -= spell1_cost;
}

if(spell2_key  && (mp_current >= spell2_cost)){
	switch(color_current){
		case COLOR.red:
			Spell2_Red();
			break;
		case COLOR.blue:
			Spell2_Blue();
			break;
		case COLOR.orange:
			Spell2_Orange();
			break;
		case COLOR.purple:
			Spell3_Purple();
			break;
		default:
			break;
};
	mp_current -= spell2_cost;
}


if(spell3_key  && (mp_current >= spell3_cost)){
	switch(color_current){
		case COLOR.red:
			Spell3_Red();
			break;
		case COLOR.blue:
			Spell3_Blue();
			break;
		case COLOR.orange:
			Spell3_Orange();
			break;
		case COLOR.purple:
			Spell3_Purple();
			break;
		default:
			break;
};
	mp_current -= spell3_cost;
}
