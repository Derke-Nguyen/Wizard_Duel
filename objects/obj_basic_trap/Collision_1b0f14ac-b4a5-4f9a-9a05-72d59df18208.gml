if(other.player_id != player_id){
	instance_destroy(id, false);
	if(other.iframe <= 0){ //walking on traps when you have an iframe destroys them
		other.playerHealth--;
		if(other.iframe == 0)
			other.iframe = 15;
	}
}