if(player_creator == other.player_id){
	x = other.x;
	y = other.y;
	if(!other.ult){
		other.invincible = time;
		other.ult = true;
	}
	if(time == 1){
		other.ult = false;
		instance_destroy();
	}
}