//Exception made for red
if(instance_exists(obj_spell_LASER)){
	if (obj_spell_LASER.player_creator == id){
		charging = true;
	}
	else{
		charging = false;
	}
}
else{
	charging = false;
}

//exception made for purple
if(slowed_time > 0){
	slowed_time--;
}
else{
	movespeed_scale = 1;
}

// Inputs
key_right = keyboard_check(RIGHT_KEY);
key_left = keyboard_check(LEFT_KEY);
key_jump = keyboard_check_pressed(JUMP_KEY);
key_up = keyboard_check(JUMP_KEY); //for red's fireball
key_fast_fall = keyboard_check(FAST_FALL_KEY);
key_spell1 = keyboard_check_pressed(SPELL1_KEY);
key_spell2 = keyboard_check_pressed(SPELL2_KEY);
key_spell3 = keyboard_check_pressed(SPELL3_KEY);

// Player controlled movement
if key_left and not key_right {
    hsp = -movespeed * movespeed_scale;
    facing = FacingDirection.Left;
} else if not key_left and key_right {
    hsp = movespeed * movespeed_scale;
    facing = FacingDirection.Right;
} else {
    hsp = 0;
}

// Sprite flipping
switch facing {
    case FacingDirection.Left:
        if not charging
			image_xscale = -1;
        break;
    case FacingDirection.Right:
        if not charging
			image_xscale = 1;
        break;
}


// Gravity
if vsp < 10 {
	vsp += c_grav;
}

// Fast Fall
if key_fast_fall {
	if vsp < 0 {
		vsp = c_fast_fall_speed;
	} else {
		vsp += c_fast_fall_speed;
	}
}

// Landing on Ground
if(place_meeting(x, y + 1, obj_floor) || place_meeting(x, y + 1, obj_platform)){
	jumps = 2;
	vsp = 0;
}

if key_jump and not charging {
	switch jumps {
		case 1:
			// Take the absolutely larger value of jumping with no prior velocity
			// and jumping with current velocity. This is done so that the second 
			// jump always "feels" like a jump.
			vsp = min(-c_second_jump_power, vsp - c_second_jump_power);
			break;
		case 2:
			vsp = min(-c_first_jump_power, vsp - c_first_jump_power);
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
if mana < 0
	mana = 0;

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
if key_spell1 and mana >= spell1cost and spell1cd == 0{
    // Moving left
	if facing == FacingDirection.Left {
        spawn_spell1(player_id, character_id, SPRITE_LEFT, SPRITE_V_CENTER, -BULLET_SPEED);
	}
    // Moving right
	else {
		spawn_spell1(player_id, character_id, SPRITE_RIGHT, SPRITE_V_CENTER, BULLET_SPEED);
	}
	switch(character_id){
	case 1: spell1cd = 20;
	break;
	case 2: spell1cd = 15;
	break;
	case 3: spell1cd = 15;
	break;
	case 4: spell1cd = 30;
	break;
	}
    mana -= spell1cost;
}

//SPELL 2
else if key_spell2 and mana >= spell2cost and spell2cd == 0{
	// Moving left
	if facing == FacingDirection.Left {
        spawn_spell2(player_id, character_id, SPRITE_LEFT, SPRITE_V_CENTER, -BULLET_SPEED);
	}
    // Moving right
	else {
		spawn_spell2(player_id, character_id, SPRITE_RIGHT, SPRITE_V_CENTER, BULLET_SPEED);
	}
	//if orange
	if(character_id == 4){
		movespeed = 20;
		speedchangedelay = 40;
	}
	switch(character_id){
	case 1: spell2cd = 50;
	break;
	case 2: spell2cd = 50;
	break;
	case 3: spell2cd = 50;
	break;
	case 4: spell2cd = 20;
	break;
	}
    mana -= spell2cost;
}

//SPELL 3
else if key_spell3 and mana >= spell3cost and spell3cd == 0{
	if(character_id == 1){
		ultdelay = 60;
	}
	mana -= spell3cost;
	// Moving left
	if facing == FacingDirection.Left {
        spawn_spell3(player_id, character_id,SPRITE_LEFT - 3, SPRITE_V_CENTER, -BULLET_SPEED);
	}
    // Moving right
	else {
		spawn_spell3(player_id, character_id,SPRITE_RIGHT + 3, SPRITE_V_CENTER, BULLET_SPEED);
	}
    switch(character_id){
	case 1: spell3cd = 20;
	break;
	case 2: spell3cd = 60;
	break;
	case 3: spell3cd = 50;
	break;
	case 4: spell3cd = 20;
			iframe = 15; //maker orange be like full orange or something
	break;
	}
}

if(ultdelay != 0)
	ultdelay--;

//cooldowns
if(spell1cd != 0)
	spell1cd--;

if(spell2cd != 0)
	spell2cd--;

if(spell3cd != 0)
	spell3cd--;

// Invincibility Stuff
if iframe != 0 {
	iframe--;
}
else{
	damaged = false;
}


// Flicker while in invicibility frames AND damaged
image_alpha = (iframe % 2 and damaged) ? 0.5 : 1;



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

