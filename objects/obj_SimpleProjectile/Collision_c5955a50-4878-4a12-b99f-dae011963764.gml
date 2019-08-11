/// @description Insert description here
// You can write your code in this editor
if(other.player_id != origin && !other.invincible && other.state_current != PLAYER_STATES.hurtlag){	
	PlayerHit(other, damage, shake, hkb, vkb, lag);
	instance_destroy();
}