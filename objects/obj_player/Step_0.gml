key_right = keyboard_check(RIGHT_KEY);
key_left = -keyboard_check(LEFT_KEY);
key_jump = keyboard_check_pressed(JUMP_KEY); //inputs

move = key_left + key_right;
hsp = move*movespeed;
if(vsp < 10){
	vsp += grav;
} //using inputs

if(place_meeting(x, y + 1, obj_floor) || place_meeting(x, y + 1, obj_platform)){
	vsp = key_jump * -jumpspeed;
} //jumping

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

if(mana <= 10){
	mana += 1/room_speed;
}