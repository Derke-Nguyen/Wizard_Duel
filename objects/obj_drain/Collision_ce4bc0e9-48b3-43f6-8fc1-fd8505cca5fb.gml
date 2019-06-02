if((player_id != other.player_id) && !dealt_damage ){
	other.playerHealth -= 1;
	other.iframe = -30; //removes iframes along with ability to get iframes
	other.mana -= 2;
	dealt_damage = true;
	gameover_check(other,player_id,character_id);
}