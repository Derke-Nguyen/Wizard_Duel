if(player_creator != other.player_id){
	other.hp_current -= 20;
}
else{
	other.y = y;
	other.x = x;
	if(image_xscale < 0){
		other.image_xscale = 1;
	}
	else{
		other.image_xscale = -1;
	}
}