if(other.player_id != player_creator && !other.invincible && other.state_current != PLAYER_STATES.hurtlag && !damaged){
	image_index++;
	speed = 0;
	current_x= other.x;
	current_y = other.y;
	x = other.x;
	y = other.y;
	PlayerHit(other, damage, shake, hkb, vkb, lag);
	damaged = true;
	current_xscale = other.image_xscale;
}
if(image_index == 1 && other.player_id != player_creator){
	other.x = current_x;
	other.y = current_y;
	other.image_xscale = current_xscale;
}
