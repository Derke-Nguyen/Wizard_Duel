if(mana >= 1){
	if(move <= 0){
		instance_create_depth(x - 32, y, 0, obj_bullet1);
		mana--;
	}
	else{
		instance_create_depth(x + 32, y, 0, obj_bullet1);
		mana--;
	}
} //shoots small bullet if mana is available
