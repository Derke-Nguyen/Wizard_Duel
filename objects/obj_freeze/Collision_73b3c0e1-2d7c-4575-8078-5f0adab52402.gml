if(other.player_id != player_creator && image_index == 1){
	image_index++;
	speed = 0;
	current_x = x;
	current_y = y;
}
if(other.player_id != player_creator && image_index == 2){
	other.x = current_x;
	other.y = current_y;
}
if(image_index == 2){
	--time;
}
if(time <= 0){
	instance_destroy();
}