//exception made for red
charging = false;

//exception made for purple
slowed_time = 0;

// CONSTANTS
c_grav = 0.7;
c_fast_fall_speed = 5;
c_first_jump_power = 11;
c_second_jump_power = 7;
c_max_health = 10;
c_max_mana = 10;
movespeed = 5;

//CONTROLLER
usingcontroller = false;

//CHARACTER
character_id = 1;

// actual variables
hsp = 0;
vsp = 0;
jumps = 2;
playerHealth = 10;
mana = 10;
iframe = 0;
speedchangedelay = 20;
movespeed_scale = 1;
damaged = false;

spell1cd = 0;
spell2cd = 0;
spell3cd = 0;

enum FacingDirection {
    Left,
    Right,
}
facing = FacingDirection.Left;
// ID for which player is which
// Used to track who fired what projectiles.
player_id = 0; // Set by each player subobject

// hsp of bullets when fired
BULLET_SPEED = 15;

// May be set by each player subobject
LEFT_KEY = vk_left;
RIGHT_KEY = vk_right;
JUMP_KEY = vk_up;
FAST_FALL_KEY = vk_down;
SPELL1_KEY = ord("Z");
SPELL2_KEY = ord("X");
SPELL3_KEY = ord("C");

//SPELL COSTS
switch(character_id){
case 1:
	spell1cost = 1;
	spell2cost = 3;
	spell3cost = 4;
break;
case 2:
	spell1cost = 1;
	spell2cost = 2;
	spell3cost = 5;
break;
case 3:
	spell1cost = 2;
	spell2cost = 1;
	spell3cost = 3;
break;
case 4:
	spell1cost = 0;
	spell2cost = 2;
	spell3cost = 2;
break;
}