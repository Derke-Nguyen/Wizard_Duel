/// @description checks for winner

if(ds_list_size(players) == 1){
	gameover_transition(ds_list_find_value(players,0));
	ds_list_destroy(players);
	exit;
}

for(var index = 0; index < ds_list_size(players); index++){
	if(players[| index].playerHealth <= 0){
		var player = players[| index];
		ds_list_delete(players, index);
		instance_destroy(player);
		exit;
	}
}