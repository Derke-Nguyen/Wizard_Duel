/*
if (flash_white || state_current == PLAYER_STATES.hurt_lag) {
	shader_set(shWhite);
}

if (invincible > 0) {
	if (invincible % frames_between_flashes == 0) {
		flash_white = !flash_white;
	}
} else {
	flash_white = false;
}
*/
draw_self();

shader_reset();
