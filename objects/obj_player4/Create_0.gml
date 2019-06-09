/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

LEFT_KEY = ord("J");
RIGHT_KEY = ord("L");
JUMP_KEY = ord("I");
FAST_FALL_KEY = ord("K");
SPELL1_KEY = ord("O");
SPELL2_KEY = ord("P");
SPELL3_KEY = ord("[");

player_id = 4;

character_id = gl_player4character;
//setup character
switch(character_id){
	case 1: sprite_index = spr_red;
	break;
	case 2: sprite_index = spr_blue;
	break;
	case 3: sprite_index = spr_purple;
	break;
	case 4: sprite_index = spr_orange;
	break;
};