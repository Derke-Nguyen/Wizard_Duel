randomize();
/// @description spawn

var margin_x = 112;
var margin_y = 16;

players = ds_list_create()

//PLAYER 1 SPAWN
if(random(1) > 0.667){
	ds_list_add(players, instance_create_depth(margin_x, margin_y, 0, obj_player1));
}
else if(random(1) > 0.334){
	ds_list_add(players, instance_create_depth(margin_x, margin_y + 176, 0, obj_player1));
}
else{
	ds_list_add(players, instance_create_depth(margin_x, margin_y + 264, 0, obj_player1));
}
var p1stats = instance_create_depth(36,320, 0, obj_stats);
p1stats.obj_player = obj_player1;


//PLAYER 2 SPAWN
if(random(1) > 0.667){
	ds_list_add(players, instance_create_depth(640 - margin_x, margin_y, 0, obj_player2));
}
else if(random(1) > 0.334){
	ds_list_add(players, instance_create_depth(640 - margin_x, margin_y + 176, 0, obj_player2));
}
else{
	ds_list_add(players, instance_create_depth(640-margin_x, margin_y + 264, 0, obj_player2));
}
var p2stats = instance_create_depth(508,320, 0, obj_stats);
p2stats.obj_player = obj_player2;

//PLAYER 3 SPAWN
if(gl_numberofcharacters >= 3){
	if(random(1) > 0.667){
		p3 = instance_create_depth(margin_x, margin_y, 0, obj_player3);
	}
	else if(random(1) > 0.334){
		p3 = instance_create_depth(margin_x, margin_y + 176, 0, obj_player3);
	}
	else{
		p3 =instance_create_depth(margin_x, margin_y + 264, 0, obj_player3);
	}
	ds_list_add(players, p3);
	var p3stats = instance_create_depth(188,320, 0, obj_stats);
	p3stats.obj_player = obj_player3;
}

//PLAYER 4 SPAWN
if(gl_numberofcharacters == 4){
	if(random(1) > 0.667){
		p4 = instance_create_depth(640 - margin_x, margin_y, 0, obj_player4);
	}
	else if(random(1) > 0.334){
		p4 = instance_create_depth(640 - margin_x, margin_y + 176, 0, obj_player4);
	}
	else{
		p4 = instance_create_depth(640-margin_x, margin_y + 264, 0, obj_player4);
	} 
	ds_list_add(players, p4);
	var p4stats = instance_create_depth(356,320, 0, obj_stats);
	p4stats.obj_player = obj_player4;
}
