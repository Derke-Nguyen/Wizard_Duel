ScrGetInputs(inputs);

StateExecute();

if (invincible > 0) {
	invincible--;
}

if (jump_buffer_timer > 0) {
	jump_buffer_timer--;
}
