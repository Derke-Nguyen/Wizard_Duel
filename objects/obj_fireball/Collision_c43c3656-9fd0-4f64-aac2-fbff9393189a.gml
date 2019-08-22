if(other.player_id != player_creator && !other.invincible && other.state_current != PLAYER_STATES.hurtlag){
	if(returned){
		PlayerHit(other, damage, shake, -1*hkb, vkb, lag);
	}
	else{
		PlayerHit(other, damage, shake, hkb, vkb, lag);
	}
}

if(other.player_id == player_creator){
	instance_destroy();
}