if(!player_creator.facing && !moved && image_index > 2){
	player_creator.x += 100;
	moved = true;
}
else if (player_creator.facing && !moved && image_index > 2){
	player_creator.x -= 100;
	moved = true;
}
if(image_index > 2)
	image_xscale = 100;
if(image_index >= 4)
	instance_destroy(id, false);