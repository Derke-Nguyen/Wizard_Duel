//exception made for red
charging = false;

// constants
grav = 0.7;
fast_fall_speed = 5;
first_jump_power = 11;
second_jump_power = 7;
movespeed = 10;
max_health = 10;
max_mana = 10;
object_id = id;

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
ultcastdelay = 0;
speedchangedelay = 20;

enum FacingDirection {
    Left,
    Right,
}
facing = FacingDirection.Left;
// ID for which player is which
// Used to track who fired what projectiles.
player_id = 0; // Set by each player subobject

// hsp of bullets when fired
BULLET_SPEED = 20;

// May be set by each player subobject
if(!usingcontroller){
	LEFT_KEY = vk_left;
	RIGHT_KEY = vk_right;
	JUMP_KEY = vk_up;
	FAST_FALL_KEY = vk_down;
	SPELL1_KEY = ord("Z");
	SPELL2_KEY = ord("X");
	SPELL3_KEY = ord("C");
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

//SPELL COSTS
spell1cost = 1;
spell2cost = 3;
spell3cost = 5;
