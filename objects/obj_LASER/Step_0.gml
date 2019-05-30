if(!facing && !moved && image_index > 2){
	player_creator.x += 100;
	x = player_creator.x;
	moved = true;
}
else if (facing && !moved && image_index > 2){
	player_creator.x -= 100;
	x = player_creator.x;
	moved = true;
}
if(image_index > 2)
	image_xscale = 100;
if(image_index >= 4){
	instance_destroy(id, false);
}

player_creator.x = clamp(player_creator.x, x, x);
player_creator.y = clamp(player_creator.y, y, y);
player_creator.facing = facing;


