if(!facing && !moved && image_index > 3){
	if(player_creator.x > 100){
		player_creator.x += 100;
	}
	else{
		player_creator.x = 10;
	}
		x = player_creator.x;
		moved = true;
}
else if (facing && !moved && image_index > 3){
	if(player_creator.x < room_width - 100){
		player_creator.x -= 100;
	}
	else{
		player_creator.x = room_width - 10;
	}
		x = player_creator.x;
		moved = true;
}
if(image_index > 3)
	image_xscale = 100;
if(image_index >= 5){
	instance_destroy(id, false);
}

player_creator.x = clamp(player_creator.x, x, x);
player_creator.y = clamp(player_creator.y, y, y);
player_creator.x = clamp(player_creator.x, 0, room_width);
player_creator.facing = facing;

