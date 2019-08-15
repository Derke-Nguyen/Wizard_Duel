if(player_creator == other.player_id){
	x = other.x;
	y = other.y;
	if(!other.invincible){
		other.invincible = true;
	}
	if(time == 1){
		other.invincible = false;
		instance_destroy();
	}
}