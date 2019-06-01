/// spawn_spell1(player_id, character_id, x_pos, y_pos, hsp)
// Returns the id of a spell object with the appropriate values
// player_id - an integer corresponding to the player number.
//                   This is probably 1, 2, 3, 4 for player 1, player 2, etc
// character_id - an integer corresponding to the character number.
//					 1 - red wizard - fires a straight projectile
//                   2 - blue wizard - fires a straight projectile
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

var originx = x_pos;
var originy = y_pos;

//determines the spawn point of the spell
if(hsp < 0){
	originx -= 3;
}
else{
	originx += 3;
}

switch character_id {
    case 1:
		var fireball_id = instance_create_depth(originx, originy, 0, obj_spell_simpleprojectile);
        fireball_id.sprite_index = spr_fireball;
		fireball_id.player_id = player_id;
		fireball_id.character_id = 1;
		fireball_id.hspeed = hsp;
		if hsp < 0 {
		fireball_id.image_xscale = -1;
		}
        break;
    case 2:var arrow_id = instance_create_depth(originx, originy, 0, obj_spell_simpleprojectile);
        arrow_id.sprite_index = spr_arrow;
		arrow_id.player_id = player_id;
		arrow_id.character_id = 2;
		arrow_id.hspeed = hsp;
		if hsp < 0 {
		arrow_id.image_xscale = -1;
		}
        break;
	case 3:
		var ground_level = y;
		var no_trap = x;
		while(place_meeting(no_trap, ground_level, obj_trap)) {
			if(hsp < 0)
				no_trap--;
			else
				no_trap++;
			while(!place_meeting(no_trap, ground_level, obj_floor) && !place_meeting(no_trap, ground_level, obj_platform)){
			ground_level++;
			}
		}
		var trap_id = instance_create_depth(no_trap, ground_level + 14, 0, obj_basic_trap);
		trap_id.player_id = player_id;
		break;
	case 4:
		if(hsp < 0){
			originx += 6;
		}
		else{
			originx -= 6;
		}
		var punch_id = instance_create_depth(originx, originy, 0, obj_spell_punch);
		punch_id.player_id = player_id;
		punch_id.hspeed = hsp;
		if hsp < 0 {
		punch_id.image_xscale = -1;
		}
		break;
}

return id;