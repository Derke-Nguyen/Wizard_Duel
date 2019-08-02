// Description : Creates the Home Screen / Character Select

//PlayerSettings
enum COLOR{
	red,
	blue,
	orange,
	purple
};

globalvar GLOBAL_PLAYER_1_TYPE;
GLOBAL_PLAYER_1_TYPE = COLOR.red;

globalvar GLOBAL_PLAYER_2_TYPE;
GLOBAL_PLAYER_2_TYPE = COLOR.blue;

//Display
resolution = "1080p";

window_set_fullscreen(true);

room_goto(GameRoom);