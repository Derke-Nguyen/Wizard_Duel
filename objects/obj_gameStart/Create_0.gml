/// @description siwei's player spawn

//CREATES PLATFORMS
instance_create_depth(64, 80, 0, obj_platform);
instance_create_depth(320, 80, 0, obj_platform);
instance_create_depth(192, 165, 0, obj_platform);

instance_create_depth(0, 240, 0, obj_floor);

if(random(1) > 0.667){
	instance_create_depth(100, 90, 0, obj_player1);
}
else if(random(1) > 0.334){
	instance_create_depth(48, 240, 0, obj_player1);
}
else{
	instance_create_depth(20, 290, 0, obj_player1);
} //creates the player 1 sprite

if(random(1) > 0.667){
	instance_create_depth(380, 90, 0, obj_player2);
}
else if(random(1) > 0.334){
	instance_create_depth(432, 240, 0, obj_player2);
}
else{
	instance_create_depth(460, 290, 0, obj_player2);
} //creates the player 2 sprite
