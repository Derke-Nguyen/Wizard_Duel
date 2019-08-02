//Inputs
inputs[0] = ord("D"); //right
inputs[1] = ord("A"); //left
inputs[2] = ord("W"); //up
inputs[3] = ord("S"); //down

inputs[4] = ord("T"); //spell1
inputs[5] = ord("Y"); //spell2
inputs[6] = ord("U"); //spell3

// Movement
ground_acceleration = 1.5;
ground_deceleration = 4;
run_speed = 12;
air_acceleration = 2;
air_deceleration = 1.25;
air_speed = 12;
jump_speed = 20;

vspd = 0;
hspd = 0;
vterminal = 25;

//Stats
hp_max = 100;
hp_current = hp_max;

mp_max = 100;
mp_current = mp_max;

//Spells

hit_lag = 0;

//Misc

invincible = 0;
invincible_max = 120;
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

// State machine
enum PLAYER_STATES{
	idle,
	air,
	run,
	weakprojectile,
	strongprojectile,
	selfcast,
	hitlag,
	hurtlag
};

enum INPUTS{
	jump,
	spell1,
	spell2,
	spell3
}

color_current = COLOR.red;
state_current = PLAYER_STATES.air;
state_timer = 0;

//Sprites
SPRITE_PLAYER_IDLE = sPlayer;
SPRITE_PLAYER_RUN = sPlayerRun;
SPRITE_PLAYER_JUMP = sPlayerJump;

SPRITE_PLAYER_WEAK_PROJECTILE = sPlayerWeakProjectile;
SPRITE_PLAYER_STRONG_PROJECTILE = sPlayerStrongProjectile;
SPRITE_PLAYER_SELF_CAST = sPlayerSelfCast;