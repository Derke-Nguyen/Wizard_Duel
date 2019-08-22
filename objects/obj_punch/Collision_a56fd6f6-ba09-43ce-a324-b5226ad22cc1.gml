if(player_creator == other.player_id){
	player_reference = other;
}

with(player_reference){
	x = other.x;
	y = other.y;
	image_xscale = other.image_xscale;
	run_speed = 0;
	if(other.hit){
		hp_current += 5;
		if(hp_current > hp_max){
			hp_current = hp_max;
		}
		run_speed = 12;
		if (place_meeting(x, y + 1, obj_Solid)) {
			StateSwitch(PLAYER_STATES.air);
		} else {
			StateSwitch(PLAYER_STATES.air);
		}
		with(other)
			instance_destroy();
	}
}

if(player_creator != other.player_id && !other.invincible && other.state_current != PLAYER_STATES.hurtlag){
	PlayerHit(other, damage, shake, hkb, vkb, lag);
	hit = true;
}

