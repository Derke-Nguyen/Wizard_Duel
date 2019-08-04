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
ground_deceleration = 3;
run_speed = 10;
air_acceleration = 2;
air_deceleration = 1.2;
air_speed = 8;
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

weak_projectile_state_timer = 0;
weak_projectile_state_frames = 2;
weak_hit_lag = 5;

strong_attack_state_timer = 0;
strong_attack_state_frames = 3;
strong_hit_lag = 3;

self_cast_state_timer = 0;
self_cast_hit_lag = 3;

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

color_current = COLOR.none;
state_current = PLAYER_STATES.air;
state_timer = 0;

//Sprites
SPRITE_PLAYER_IDLE = sPlayer;
SPRITE_PLAYER_RUN = sPlayerRun;
SPRITE_PLAYER_JUMP = sPlayerJump;

SPRITE_PLAYER_WEAK_PROJECTILE = sPlayerWeakProjectile;
SPRITE_PLAYER_STRONG_PROJECTILE = sPlayerStrongProjectile;
SPRITE_PLAYER_SELF_CAST = sPlayerSelfCast;