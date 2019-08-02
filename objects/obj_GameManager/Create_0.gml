//Description: 

#macro GRAV 0.9;

buffs_to_draw = ds_list_create();

resolution = "1080p";

show_end_menu = false;
end_menu_delay = 60;

black_screen_start_alpha = 1;
black_screen_start_speed = 0.05;

audio_master_gain(0.5);

window_set_fullscreen(true);

//Spawn players
switch(GLOBAL_PLAYER_1_TYPE){
	case COLOR.red:
		player1 = instance_create_layer(960, 540, "Player", obj_Red);
	break;
	case COLOR.blue:
		player1 = instance_create_layer(960, 540, "Player", obj_Blue);
	break;
	case COLOR.orange:
		player1 = instance_create_layer(960, 540, "Player", obj_Orange);
	break;
	case COLOR.purple:
		player1 = instance_create_layer(960, 540, "Player", obj_Purple);
	break;
	default:
		player1 = instance_create_layer(960, 540, "Player", obj_Player);
	break;
};
switch(GLOBAL_PLAYER_2_TYPE){
	case COLOR.red:
		player2 = instance_create_layer(960, 540, "Player", obj_Red);
	break;
	case COLOR.blue:
		player2 = instance_create_layer(960, 540, "Player", obj_Blue);
	break;
	case COLOR.orange:
		player2 = instance_create_layer(960, 540, "Player", obj_Orange);
	break;
	case COLOR.purple:
		player2 = instance_create_layer(960, 540, "Player", obj_Purple);
	break;
	default:
		player2 = instance_create_layer(960, 540, "Player", obj_Player);
	break;
};

SetPlayers(player1, player2);
