// Description : PlayerCast() - Checks which keys are pressed and casts spells if possible
//All spell1's are the same
if(spell1_key && (mp_current >= spell1_cost)){
	//Main effects in all spells, remove mana, reset state timers, set cast lag, switch states
	mp_current -= spell1_cost;
	weak_projectile_state_timer = 0;
	strong_projectile_state_timer = 0;
	hit_lag = weak_hit_lag;
	StateSwitch(PLAYER_STATES.weakprojectile);
	image_index = 0;
	//audio_play_sound
	//audio_sound_pitch
	
	//actual spell creation
	var _shot = instance_create_layer(x,y, "EffectsTop", obj_SimpleProjectile);
	_shot.origin = player_id;
	_shot.hspeed *= image_xscale;
	_shot.hkb *= image_xscale;
	
	//change spell sprite based on character type
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
}

if(spell2_key  && (mp_current >= spell2_cost)){
	mp_current -= spell2_cost;
	weak_projectile_state_timer = 0;
	strong_projectile_state_timer = 0;
	
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
}


if(spell3_key  && (mp_current >= spell3_cost)){
	mp_current -= spell3_cost;
	weak_projectile_state_timer = 0;
	strong_projectile_state_timer = 0;
	
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
	
}
