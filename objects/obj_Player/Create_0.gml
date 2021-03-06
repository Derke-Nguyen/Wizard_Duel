//Description : Sets up all the inital data in the player obj

//Inputs
inputs[0] = ord("D"); //right
inputs[1] = ord("A"); //left
inputs[2] = ord("W"); //up
inputs[3] = ord("S"); //down

inputs[4] = ord("R"); //spell1
inputs[5] = ord("T"); //spell2
inputs[6] = ord("Y"); //spell3

// Movement
ground_acceleration = 3;
ground_deceleration = 6;
run_speed = 12;
air_acceleration = 3;
air_deceleration = 6;
air_speed = 9;
jump_speed = 20;

vspd = 0;
hspd = 0;
vterminal = 30;

//Stats
hp_max = 100;
hp_current = hp_max;

mp_max = 100;
mp_current = mp_max;

//Spells

spell1_cost = 10;
spell2_cost = 20;
spell3_cost = 30;

weak_projectile_state_timer = 0;
weak_projectile_state_frames = 5;
weak_hit_lag = 3;

strong_projectile_state_timer = 0;
strong_projectile_state_frames = 10;
strong_hit_lag = 8;

self_cast_state_timer = 0;
self_cast_state_frames = 3;
self_cast_hit_lag = 1;

hit_lag = 0;

//Misc

invincible = 0;
invincible_max = 90;
hurtlag = 0;
knocked_back = false;

flash_white = false;
frames_between_flashes = 5;

platform_list = ds_list_create();

buffered_input = noone;
buffered_input_frames = 10;
jump_buffer_timer = 0;
jump_buffer_timer_max = 10;

player_id = 0; //0 or 1
same_type = false;

// State machine
enum PLAYER_STATES{
	idle,
	air,
	run,
	weakprojectile,
	strongprojectile,
	selfcast,
	mobility,
	hurtlag
};

enum INPUTS{
	jump,
	spell1,
	spell2,
	spell3
}

//default spawn
color_current = COLOR.none;
state_current = PLAYER_STATES.air;
state_timer = 0;

//Sprites, character specific
SPRITE_PLAYER_IDLE = sPlayer;
SPRITE_PLAYER_RUN = sPlayerRun;
SPRITE_PLAYER_JUMP = sPlayerJump;

SPRITE_PLAYER_WEAK_PROJECTILE = sPlayerWeakProjectile;
SPRITE_PLAYER_STRONG_PROJECTILE = sPlayerStrongProjectile;
SPRITE_PLAYER_SELF_CAST = sPlayerSelfCast;