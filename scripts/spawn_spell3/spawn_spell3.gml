/// spawn_spell3(player_id, character_id, x_pos, y_pos, hsp)
// Returns the id of a spell object with the appropriate values
// player_id - an integer corresponding to the player number.
//                   This is probably 1, 2, 3, 4 for player 1, player 2, etc
// character_id - an integer corresponding to the character number.
//					 1 - red wizard
//                   2 - blue wizard - removes all spells
//                   3 - purple wizard
//                   4 - orange wizard
// x_pos - x position to spawn spell
// y_pos - y position to spawn spell
// hsp - the spell's horizontal speed to spawn with
// TODO: Allow for non horizontal spell movement?
// RETURNS - the id of the spell (probably an int)

var player_id = argument0;
var character_id = argument1;
var x_pos = argument2;
var y_pos = argument3;
var hsp = argument4;

switch character_id{
	//red wizard
	case 1: //LAZOR
		if(facing){
			var laser_id = instance_create_depth(x, y, 0, obj_spell_LASER);
			sprite_set_offset(spr_LASER, 0, 32);
			laser_id.direction = 0;
		}
		else{
			var laser_id = instance_create_depth(x, y, 0, obj_spell_LASER);
			sprite_set_offset(spr_LASER, 64, 32);
			laser_id.direction = 180;
		}
		laser_id.player_id = player_id;
		laser_id.player_creator = id;
		laser_id.facing = facing;
	break;
	//blue wizard
	case 2: //NULL
		var shield_id = instance_create_depth(x_pos, y_pos, 0, obj_spell_null);
		shield_id.player_id = player_id;
	break;
	case 3:
	//purple wizard
		//fills the room
		for(i = 0; i < room_width / 32; ++i){
			for(j = 0; j < room_height / 32; ++j){
				var drain_id = instance_create_depth(64 * i, 64 * j, -100, obj_drain);
				drain_id.player_id = player_id;
			}
		}
	break;
	case 4: //overridden in the player
	break;
}

return id;
