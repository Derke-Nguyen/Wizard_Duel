if(spell1_key){
	weak_projectile_state_timer = 0;
	strong_projectile_state_timer = 0;
	StateSwitch(PLAYER_STATES.weakprojectile);
}

if(spell2_key){
	weak_projectile_state_timer = 0;
	strong_projectile_state_timer = 0;
	StateSwitch(PLAYER_STATES.weakprojectile);
}

if(spell3_key){
	weak_projectile_state_timer = 0;
	strong_projectile_attack_charge = 0;
	//play audio
	StateSwitch(PLAYER_STATES.strongprojectile);
}