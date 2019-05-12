if other.player_id != player_id {
    other.playerHealth -= 1;
    instance_destroy();
}