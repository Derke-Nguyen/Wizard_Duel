if(player_creator == other.player_id && player_reference == 0){
	player_reference = other;
}

with(player_reference){
			StateSwitch(PLAYER_STATES.air);
}

if(player_creator == other.player_id){
	other.x = x;
	other.run_speed = 0;
	other.image_xscale = image_xscale;
	y = other.y;
	if(hit){
		other.hp_current += 5;
		if(other.hp_current > other.hp_max){
			other.hp_current = other.hp_max;
		}
		other.run_speed = 12;
		instance_destroy();
	}
}
if(player_creator != other.player_id && !other.invincible){
	PlayerHit(other, damage, shake, hkb, vkb, lag);
	hit = true;
}