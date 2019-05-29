if(player_id != other.player_id && !dealt_damage){
	other.playerHealth -= 3;
	dealt_damage = true;
	depth = 0;
	other.iframe = 30;
}
