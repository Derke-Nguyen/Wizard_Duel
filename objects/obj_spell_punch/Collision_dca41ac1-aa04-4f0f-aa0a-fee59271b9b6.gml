if (other.player_id != player_id && other.iframe == 0) {
    other.playerHealth -= 1;
	other.iframe = 30;
	gameover_check(other,player_id,4);
    instance_destroy();
}