/// create_bullet(player_id, x_pos, y_pos, hsp)
// Returns the id of a bullet object with the appropriate values
// player_id - an integer corresponding to the player number.
//                   This is probably 1, 2, 3, 4 for player 1, player 2, etc
// x_pos - x position to spawn bullet
// y_pos - y position to spawn bullet
// hsp - the bullet's horizontal speed to spawn with
// TODO: Allow for non horizontal bullet movement?
// RETURNS - the id of the bullet (probably an int)

var player_id = argument0;
var x_pos = argument1;
var y_pos = argument2;
var hsp = argument3;

var bullet_id = instance_create_depth(x_pos, y_pos, 0, obj_bullet);

bullet_id.hspeed = hsp;
bullet_id.player_id = player_id;

// If moving left, flip the sprite
if hsp < 0 {
    bullet_id.image_xscale = -1;
}

switch player_id {
    case 1:
        bullet_id.sprite_index = spr_fireball;
        break;
    case 2:
        bullet_id.sprite_index = spr_arrow;
        break;
}

return id;