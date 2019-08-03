// Description : Creates the Home Screen / Character Select

//PlayerSettings
enum COLOR{
	none,
	red,
	blue,
	orange,
	purple
};

globalvar GLOBAL_PLAYER_1_TYPE;
GLOBAL_PLAYER_1_TYPE = COLOR.none

globalvar GLOBAL_PLAYER_2_TYPE;
GLOBAL_PLAYER_2_TYPE = COLOR.none

//Display
resolution = "1080p";

window_set_fullscreen(true);