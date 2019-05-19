randomize();

/// @description siwei's player spawn
D = 64;
//CREATES PLATFORMS
instance_create_depth(D, D, 0, obj_platform);
instance_create_depth(room_width - 3*D, D, 0, obj_platform);
instance_create_depth(4*D, 2.3*D, 0, obj_platform);
instance_create_depth(D, 3.5*D, 0, obj_platform);
instance_create_depth(room_width - 3*D, 3.5*D, 0, obj_platform);

//CREATES FLOOR
instance_create_depth(0, 360-48, 0, obj_floor);

if(random(1) > 0.667){
	instance_create_depth(D, 360 - 3.5*D, 0, obj_player1);
}
else if(random(1) > 0.334){
	instance_create_depth(D, 360 - 2*D, 0, obj_player1);
}
else{
	instance_create_depth(20, 360 - 2.5*D, 0, obj_player1);
} //creates the player 1 sprite

if(random(1) > 0.667){
	instance_create_depth(640 - D, 360 - 3.5*D, 0, obj_player2);
}
else if(random(1) > 0.334){
	instance_create_depth(640 - D, 360 - 2*D, 0, obj_player2);
}
else{
	instance_create_depth(620, 360 - 2.5*D, 0, obj_player2);
} //creates the player 2 sprite
