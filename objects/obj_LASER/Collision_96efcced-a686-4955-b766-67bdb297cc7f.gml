if(player_id != other.player_id && image_index > 2 && !dealt_damage){
	other.playerHealth -= 5;
	dealt_damage = true;
	other.iframe = 30;
}
