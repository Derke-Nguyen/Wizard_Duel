// Inputs
key_right = keyboard_check(RIGHT_KEY);
key_left = -keyboard_check(LEFT_KEY);
key_jump = keyboard_check_pressed(JUMP_KEY);
key_bullet = keyboard_check_pressed(BULLET_KEY);

// Horizontal speed set by movement
move = key_left + key_right;
hsp = move*movespeed;

// Gravity
if(vsp < 10){
	vsp += grav;
}

// Jumping
if(place_meeting(x, y + 1, obj_floor) || place_meeting(x, y + 1, obj_platform)){
	vsp = key_jump * -jumpspeed;
}

// Mana Regen
if(mana <= 10){
	mana += 1/room_speed;
}

// Fire a bullet if mana is avaliable
// TODO: perhaps factor this out into a script?
// We will probably want to given that each person has multiple abilities
// The bullet spawns vertically centered on the sprite
// and to the left or right side of it.
var SPRITE_V_CENTER = y + sprite_height / 2;
var SPRITE_LEFT = x;
var SPRITE_RIGHT = x + sprite_width;

if key_bullet and mana >= 1{
    // Moving left
	if (move <= 0) {
        spawn_bullet(player_id, SPRITE_LEFT - 3, SPRITE_V_CENTER, -BULLET_SPEED);
	}
    // Moving right
	else {
		spawn_bullet(player_id, SPRITE_RIGHT + 3, SPRITE_V_CENTER, BULLET_SPEED);
	}
    mana--;
}

// COLLISION CODE
// This code does the following things
// 1. Move along y-axis
// 2. Resolve y-axis collisions with walls
// 3. Move along x-axis
// 4. Resolve x-axis collisions with walls

// The list of colliders. This is a "DS list"
colliders_list = ds_list_create();

// 1. Move along y-axis
y += vsp;

// 2. Resolve y-axis collisions with walls
instance_place_list(x, y, obj_solid, colliders_list, false);
resolve = resolve_colliders_y(self, vsp, colliders_list);
y += resolve[0];
vsp = resolve[1];

// Clear the list and regenerate it (maybe we are not touching a collider
// anymore since we just moved along the y-axis).
ds_list_clear(colliders_list);

// 3. Move along x-axis
x += hsp;

// 4. Resolve x-axis collisions with walls.
instance_place_list(x, y, obj_solid, colliders_list, false);
resolve = resolve_colliders_x(self, hsp, colliders_list);
x += resolve[0];
hsp = resolve[1];

// Destroy the list to avoid leaking memory.
ds_list_destroy(colliders_list);