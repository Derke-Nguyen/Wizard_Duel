if(mana >= 1){
	if(move < 0){
		with (instance_create_depth(x - 32, y, 0, obj_bullet1)){
			direction = 180;
		}
		mana--;
	}
	else{
		with (instance_create_depth(x + 32, y, 0, obj_bullet1)){
			direction = 0;
		}
		mana--;
	}
} //shoots small bullet if mana is available
