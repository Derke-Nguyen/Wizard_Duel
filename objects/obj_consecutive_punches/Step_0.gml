--time;
if(time <= 0){
	instance_destroy();
	if(player_creator == 1){
		obj_p1_count.count = 0;
	}
	else{
		obj_p2_count.count = 0;
	}
}