if(player_creator == other.player_id){
	other.x = x;
	y = other.y;
	if(hit){
		other.hp_current += 5;
		if(other.hp_current > other.hp_max){
			other.hp_current = other.hp_max;
		}
		instance_destroy();
	}
}
if(player_creator != other.player_id && !other.invincible){
	PlayerHit(other, damage, shake, hkb, vkb, lag);
	hit = true;
}