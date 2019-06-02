randomize();
/// @description siwei's player spawn
D = 64;

var margin_x = 112;
var margin_y = 16;

//PLAYER 1 SPAWN
if(random(1) > 0.667){
	instance_create_depth(margin_x, margin_y, 0, obj_player1);
}
else if(random(1) > 0.334){
	instance_create_depth(margin_x, margin_y + 176, 0, obj_player1);
}
else{
	instance_create_depth(margin_x, margin_y + 264, 0, obj_player1);
}
//instance_create_depth(24,320, 0, obj_healthbar_p1);

//PLAYER 2 SPAWN
if(random(1) > 0.667){
	instance_create_depth(640 - margin_x, margin_y, 0, obj_player2);
}
else if(random(1) > 0.334){
	instance_create_depth(640 - margin_x, margin_y + 176, 0, obj_player2);
}
else{
	instance_create_depth(640-margin_x, margin_y + 264, 0, obj_player2);
} 
//instance_create_depth(616,320, 0, obj_healthbar_p2);
