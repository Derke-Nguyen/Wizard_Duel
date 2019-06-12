if (other.player_id != player_id && other.iframe == 0) {
    other.playerHealth -= 1;
	other.iframe = 30;
	other.damaged = true;
    instance_destroy();
}