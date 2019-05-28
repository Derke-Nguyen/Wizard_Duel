/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

LEFT_KEY = ord("A");
RIGHT_KEY = ord("D");
JUMP_KEY = ord("W");
FAST_FALL_KEY = ord("S");
SPELL1_KEY = ord("R");
SPELL2_KEY = ord("T");
SPELL3_KEY = ord("Y");

player_id = 1;

character_id = player1character;
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