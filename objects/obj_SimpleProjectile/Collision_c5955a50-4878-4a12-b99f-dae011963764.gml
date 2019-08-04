/// @description Insert description here
// You can write your code in this editor

if(other.player_id != origin && other.invincible == 0){
	other.hp_current -= damage;
	instance_destroy();
}