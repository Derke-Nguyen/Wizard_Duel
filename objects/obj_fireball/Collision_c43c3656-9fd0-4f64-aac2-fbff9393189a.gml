if(other.player_id != player_creator && !other.invincible && other.state_current != PLAYER_STATES.hurtlag){
	PlayerHit(other, damage, shake, hkb, vkb, lag);

}

if(other.player_id == player_creator){
	instance_destroy();
}