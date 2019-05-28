/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
usingcontroller = player2controller;
if(!usingcontroller){
	LEFT_KEY = vk_left;
	RIGHT_KEY = vk_right;
	JUMP_KEY = vk_up;
	SPELL1_KEY = vk_numpad1;
	SPELL2_KEY = vk_numpad2;
	SPELL3_KEY = vk_numpad3;
	FAST_FALL_KEY = vk_down;
}
if(usingcontroller){
	LEFT_KEY = gp_padl;
	RIGHT_KEY = gp_padr;
	JUMP_KEY = gp_padu;
	FAST_FALL_KEY = gp_padd;
	SPELL1_KEY = gp_face3;
	SPELL2_KEY = gp_face4;
	SPELL3_KEY = gp_face2;
}

player_id = 2;
character_id = player2character;
character_id = player2character;
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
