if(other.player_id != player_creator && !other.invincible){
	PlayerHit(other, damage, shake, hkb, vkb, lag);
	instance_destroy();
	player_reference.hp_current += heal;
	if(player_reference.hp_current > player_reference.hp_max){
		player_reference.hp_current = player_reference.hp_max;
	}
	if(player_creator == 1){
		++obj_p1_count.count;
	}
	else{
		++obj_p2_count.count;
	}
}