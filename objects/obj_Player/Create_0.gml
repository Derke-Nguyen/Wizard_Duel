//Inputs
inputs[0] = vk_right; //right
inputs[1] = vk_left; //left
inputs[2] = vk_up; //up
inputs[3] = vk_down; //down

inputs[4] = vk_numpad1; //spell1
inputs[5] = vk_numpad2; //spell2
inputs[6] = vk_numpad3; //spell3

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

// State machine
enum PLAYER_STATES{
	idle,
	air,
	run,
	spell1,
	spell2,
	spell3,
	hitlag,
	hurtlag
};

enum INPUTS{
	jump,
	spell1,
	spell2,
	spell3
}

state_current = PLAYER_STATES.air;
state_timer = 0;