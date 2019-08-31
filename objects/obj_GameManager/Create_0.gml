// Description : Sets up the game once the room loads

#macro GRAV 0.8;

buffs_to_draw = ds_list_create();

audio_play_sound(snd_BGM, 10, true);

//pause
paused = false;
pause_col_change = 60;

//end screen
show_end_menu = false;
end_menu_x = view_wport[0] * 0.5;
end_menu_y = view_hport[0] * 0.3;
menu_font = Pixel;
menu_col = c_white;
victor = "nobody";

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
		instance_create_depth(0, 0, 0, obj_p2_count);
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
		instance_create_depth(0, 0, 0, obj_p1_count);
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

//creates health bars
var _player1_bar = instance_create_layer(200, 980, "Player", obj_Status);
_player1_bar.player = player1;

var _player2_bar = instance_create_layer(1532, 980, "Player", obj_Status);
_player2_bar.player = player2;
