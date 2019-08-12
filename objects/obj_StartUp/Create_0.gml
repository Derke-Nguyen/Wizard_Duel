// Description : Creates the Home Screen / Character Select

//Defines the possible wizard types
enum COLOR{
	none,
	red,
	blue,
	orange,
	purple
};

//Sets player colors to nothing on startup
globalvar GLOBAL_PLAYER_1_TYPE;
GLOBAL_PLAYER_1_TYPE = COLOR.none

globalvar GLOBAL_PLAYER_2_TYPE;
GLOBAL_PLAYER_2_TYPE = COLOR.none

//Sets resolution and makes the game fullscreen
resolution = "1080p";
resolution_number_index = 2;

window_set_fullscreen(true);