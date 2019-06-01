hsp += 0.5*hsa*(time);
vsp += 0.5*vsa*(time);

x += 0.8*(hsp + basehsp);
y += 0.7*vsp;

time += 0.05;
lifetime--;
if (lifetime <= 10){
	image_xscale = 3;
	image_yscale = 3;
	if(lifetime <= 0)
		instance_destroy(id, false);
}
	
if(player_creator.key_fast_fall){
	vsp += 1.5;
}
if(player_creator.key_up){
	vsp -= 1.5;
}
if(player_creator.key_left){
	hsp -= 1;
}
if(player_creator.key_right){
	hsp += 1;
}
if(player_creator.key_spell2){
	if lifetime > 10
		lifetime = 10;
}

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height - obj_floor.sprite_height);