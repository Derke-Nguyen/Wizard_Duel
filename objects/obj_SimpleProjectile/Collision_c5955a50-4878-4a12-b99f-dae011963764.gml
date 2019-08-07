/// @description Insert description here
// You can write your code in this editor
if(other.player_id != origin && !other.invincible && other.state_current != PLAYER_STATES.hurtlag){
	with(other){	
		hp_current -= other.damage;
		//knockback
		hkb = other.hkb;
		vkb = other.vkb;

		
		//hurtlag
		hurt_lag = other.lag;
		StateSwitch(PLAYER_STATES.hurtlag);
		ScreenShake(other.shake,other.shake);
	}
	instance_destroy();
}