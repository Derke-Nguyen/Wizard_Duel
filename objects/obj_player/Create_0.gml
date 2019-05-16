// constants
grav = 0.7;
fast_fall_speed = 5;
first_jump_power = 11;
second_jump_power = 7;
movespeed = 10;

// actual variables
hsp = 0;
vsp = 0;
jumps = 2;
playerHealth = 5;
mana = 10;
iframe = 0;

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
LEFT_KEY = vk_left;
RIGHT_KEY = vk_right;
JUMP_KEY = vk_up;
FAST_FALL_KEY = vk_down;
BULLET_KEY = ord("I");
