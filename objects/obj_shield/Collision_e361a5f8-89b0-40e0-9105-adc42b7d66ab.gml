/// @description destroys any spells that comes in contact with it
if(other.player_id != player_id){
	instance_destroy(other);
}