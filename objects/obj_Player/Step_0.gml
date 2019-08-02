ScrGetInputs(inputs);

StateExecute();

if (invincible > 0) {
	invincible--;
}

if (jump_buffer_timer > 0) {
	jump_buffer_timer--;
}

if(hp_current <= 0){
	hurt_lag = 100;
	StateSwitch(PLAYER_STATES.hurtlag);
}