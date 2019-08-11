//if both players are the same color, one will be a bit different
if(same_type){
	shader_set(shSameCharacter);
}

if (flash_white || state_current == PLAYER_STATES.hurtlag) {
	shader_set(shWhite);
}

if (invincible > 0) {
	if (invincible % frames_between_flashes == 0) {
		flash_white = !flash_white;
	}
} else {
	flash_white = false;
}

draw_self();

shader_reset();
