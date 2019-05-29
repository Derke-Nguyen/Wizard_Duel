///@description if the spell id doesn't match the player id of the player, destroy

if(other.player_id != player_id){
	instance_destroy(other);
}