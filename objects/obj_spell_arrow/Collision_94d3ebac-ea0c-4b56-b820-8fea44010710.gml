//deals damage if they player's id doesn't match the origin player id of the spell
if (other.player_id != player_id && other.iframe == 0) {
    other.playerHealth -= 1;
	other.iframe = 30;
	gameover_check(other,player_id,character_id);
    instance_destroy();
}