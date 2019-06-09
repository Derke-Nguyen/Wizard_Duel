/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

LEFT_KEY = ord("C");
RIGHT_KEY = ord("B");
JUMP_KEY = ord("F");
FAST_FALL_KEY = ord("V");
SPELL1_KEY = ord("N");
SPELL2_KEY = ord("M");
SPELL3_KEY = ord(",");

player_id = 3;

character_id = gl_player3character;
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