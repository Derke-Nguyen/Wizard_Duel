randomize();
/// @description siwei's player spawn

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
instance_create_depth(36,320, 0, obj_stats);

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
var p2stats = instance_create_depth(508,320, 0, obj_stats);
p2stats.objplayer = obj_player2;

//PLAYER 3 SPAWN
if(gl_numberofcharacters >= 3){
	if(random(1) > 0.667){
		instance_create_depth(margin_x, margin_y, 0, obj_player3);
	}
	else if(random(1) > 0.334){
		instance_create_depth(margin_x, margin_y + 176, 0, obj_player3);
	}
	else{
		instance_create_depth(margin_x, margin_y + 264, 0, obj_player3);
	}
	var p3stats = instance_create_depth(188,320, 0, obj_stats);
	p3stats.objplayer = obj_player3;
}

//PLAYER 4 SPAWN
if(gl_numberofcharacters == 4){
	if(random(1) > 0.667){
		instance_create_depth(640 - margin_x, margin_y, 0, obj_player4);
	}
	else if(random(1) > 0.334){
		instance_create_depth(640 - margin_x, margin_y + 176, 0, obj_player4);
	}
	else{
		instance_create_depth(640-margin_x, margin_y + 264, 0, obj_player4);
	} 
	var p4stats = instance_create_depth(356,320, 0, obj_stats);
	p4stats.objplayer = obj_player4;
}
