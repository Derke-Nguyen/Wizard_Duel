if(player_id != other.player_id && image_index > 2 && !dealt_damage && other.iframe == 0){
	other.playerHealth -= 5;
	dealt_damage = true;
	other.iframe = 30;
	other.damaged = true;
}

