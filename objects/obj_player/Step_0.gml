// Inputs
key_right = keyboard_check(RIGHT_KEY);
key_left = keyboard_check(LEFT_KEY);
key_jump = keyboard_check_pressed(JUMP_KEY);
key_fast_fall = keyboard_check(FAST_FALL_KEY);
key_bullet = keyboard_check_pressed(BULLET_KEY);

// Player controlled movement
if key_left and not key_right {
    hsp = -movespeed;
    facing = FacingDirection.Left;
} else if not key_left and key_right {
    hsp = movespeed;
    facing = FacingDirection.Right;
} else {
    hsp = 0;
}

// Sprite flipping
switch facing {
    case FacingDirection.Left:
        image_xscale = -1;
        break;
    case FacingDirection.Right:
        image_xscale = 1;
        break;
}


// Gravity
if vsp < 10 {
	vsp += grav;
}

// Fast Fall
if key_fast_fall {
	if vsp < 0 {
		vsp = fast_fall_speed;
	} else {
		vsp += fast_fall_speed;
	}
}

// Landing on Ground
if(place_meeting(x, y + 1, obj_floor) || place_meeting(x, y + 1, obj_platform)){
	jumps = 2;
	vsp = 0;
}

if key_jump {
	switch jumps {
		case 1:
			// Take the absolutely larger value of jumping with no prior velocity
			// and jumping with current velocity. This is done so that the second 
			// jump always "feels" like a jump.
			vsp = min(-second_jump_power, vsp - second_jump_power);
			break;
		case 2:
			vsp = min(-first_jump_power, vsp - first_jump_power);
			break;
		default:
			// lmao nothing
	}
	jumps = max(jumps - 1, 0);
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
var SPRITE_V_CENTER = y;
// Do abs() on sprite_width because sprite_width will be negative if
// if image_xscale is negative (which is annoying)
var SPRITE_LEFT = x - abs(sprite_width) / 2.0;
var SPRITE_RIGHT = x + abs(sprite_width) / 2.0;
if key_bullet and mana >= 1{
    // Moving left
	if facing == FacingDirection.Left {
        spawn_bullet(player_id, SPRITE_LEFT - 3, SPRITE_V_CENTER, -BULLET_SPEED);
	}
    // Moving right
	else {
		spawn_bullet(player_id, SPRITE_RIGHT + 3, SPRITE_V_CENTER, BULLET_SPEED);
	}
    mana--;
}

// Invincibility Stuff
if iframe > 0 {
	iframe--;
}
// Flicker while in invicibility frames
image_alpha = (iframe % 2) ? 0.5 : 1;

// Game end transition
if playerHealth <= 0 {
	gameover_transition(player_id);
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

x = clamp(x, 0, room_width);