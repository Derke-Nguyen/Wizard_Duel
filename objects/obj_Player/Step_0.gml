ScrGetInputs(inputs);

StateExecute();

//mana regen
if(mp_current < mp_max){
	mp_current += 10/room_speed;
}
if (mp_current < 0){
	mp_current = 0;
}

//decreases iframes
if (invincible > 0) {
	invincible--;
}

if (jump_buffer_timer > 0) {
	jump_buffer_timer--;
}

//if you dead, maybe change to death animation and stuff
if(hp_current <= 0){
	hurt_lag = 100;
	StateSwitch(PLAYER_STATES.hurtlag);
	instance_destroy();
}