/// spawn_spell2(player_id, character_id, x_pos, y_pos, hsp)
// Returns the id of a spell object with the appropriate values
// player_id - an integer corresponding to the player number.
//                   This is probably 1, 2, 3, 4 for player 1, player 2, etc
// character_id - an integer corresponding to the character number.
//					 1 - red wizard
//                   2 - blue wizard - creates a shield that blocks projectiles
//                   3 - purple wizard
//                   4 - orange wizard
// x_pos - x position to spawn spell
// y_pos - y position to spawn spell
// hsp - the spell's horizontal speed to spawn with
// RETURNS - the id of the spell (probably an int)

var player_id = argument0;
var character_id = argument1;
var x_pos = argument2;
var y_pos = argument3;
var hsp = argument4;

var originx = x_pos;
var originy = y_pos;

if(hsp < 0){
	originx -= 3;
}
else{
	originy += 3;
}

switch character_id{
	//red wizard
	case 1: 
	if(hsp < 0){
		originx -= 10;
	}
	else{
		originx += 10;
	}
	if(!instance_exists(obj_exploding_fireball)){
		var fireball_id = instance_create_depth(originx, originy, -100, obj_spell_explosion);
		fireball_id.player_id = player_id;
		fireball_id.player_creator = id;
		fireball_id.basehsp = hsp / 2;
	}
	else{
		mana += spell2cost;
	}

	break;
	//blue wizard
	case 2: //shield thingy
	if(hsp < 0){
		originx -= 10;
	}
	else{
		originx += 10;
	}
	var shield_id = instance_create_depth(originx, originy, 0, obj_spell_shield);
	shield_id.player_id = player_id;
	if(hsp < 0){
		shield_id.image_xscale = -1;
	}
	break;
	case 3:
	break;
	case 4: //overridden in the player
	break;
	
}

return id;