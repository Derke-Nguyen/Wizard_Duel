//Description: 

#macro GRAV 0.8;

buffs_to_draw = ds_list_create();

audio_play_sound(snd_BGM, 10, true);

show_end_menu = false;
end_menu_delay = 20;

end_menu_alpha = 0;
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
		show_error("Error: Invalid Character", true);
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
		show_error("Error: Invalid Character", true);
	break;
};

SetPlayers(player1, player2);
