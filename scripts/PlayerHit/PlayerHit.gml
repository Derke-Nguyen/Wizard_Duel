// Description : PlayerHit(player, damage, screenshake, hkb, vkb, lag) - this happens when the player is hit

//deal damage
argument0.hp_current -= argument1;

//knockback
argument0.hkb = argument3;
argument0.vkb = argument4;

//screenshake
ScreenShake(argument2, argument2);

//hurtlag
argument0.hurt_lag = argument5;
with(argument0){
	StateSwitch(PLAYER_STATES.hurtlag);
}