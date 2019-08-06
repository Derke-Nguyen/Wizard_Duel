/// @description Insert description here
// You can write your code in this editor
with(other){
	if(player_id != other.origin && !invincible && state_current != PLAYER_STATES.hurtlag){
		hp_current -= other.damage;
		hkb = other.hkb;
		vkb = other.vkb;
		hurt_lag = other.lag;
	
		StateSwitch(PLAYER_STATES.hurtlag);
	
		//hit effects maybe
	}
}

if(other.player_id != origin){
	instance_destroy();
}