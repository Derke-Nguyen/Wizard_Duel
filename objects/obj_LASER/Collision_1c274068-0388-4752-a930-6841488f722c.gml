if(other.player_id != player_creator && !other.invincible && other.state_current != PLAYER_STATES.hurtlag){
	PlayerHit(other, damage, 5, hkb, vkb, lag);
	
}
else if(other.player_id == player_creator){
	other.y = y;
	other.x = x;
	if(image_xscale < 0){
		other.image_xscale = 1;
	}
	else{
		other.image_xscale = -1;
	}
}