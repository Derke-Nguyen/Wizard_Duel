grav = 0.7;
hsp = 0;
vsp = 0;
jumpspeed = 10;
movespeed = 10;
playerHealth = 5;
mana = 10;

enum FacingDirection {
    Left,
    Right,
}
facing = FacingDirection.Left;
// ID for which player is which
// Used to track who fired what projectiles.
player_id = 0; // Set by each player subobject

// hsp of bullets when fired
BULLET_SPEED = 7;

// May be set by each player subobject
LEFT_KEY = vk_left;
RIGHT_KEY = vk_right;
JUMP_KEY = vk_up;
BULLET_KEY = ord("I");
