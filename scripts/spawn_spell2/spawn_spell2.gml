// create_spell2(player_id, x_pos, y_pos, hsp)
// Returns the id of a bullet object with the appropriate values
// player_id - an integer corresponding to the player number.
//                   This is probably 1, 2, 3, 4 for player 1, player 2, etc
// x_pos - x position to spawn bullet
// y_pos - y position to spawn bullet
// hsp - the bullet's horizontal speed to spawn with
// TODO: Allow for non horizontal bullet movement?
// RETURNS - the id of the bullet (probably an int)

var player_id = argument0;
var character_id = argument1;
var x_pos = argument2;
var y_pos = argument3;
var hsp = argument4;

switch character_id{
	//red wizard
	case 1: //exploady fireball thingy

	break;
	//blue wizard
	case 2: //shield thingy
		var shield_id = instance_create_depth(x_pos, y_pos, 0, obj_shield);
		shield_id.hspeed = 0;
		shield_id.player_id = player_id;
		if(hsp <0){
			shield_id.image_xscale = -1;
		}
	break;
	
}

return id;