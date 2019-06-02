/// gameover_check(target_player, source_player_id, source_character_id)
// Moves to the end game screen if it determines something true
// target_player - Returns the integer of the player that is the target
//                   This is probably 1, 2, 3, 4 for player 1, 2, etc.
// source_player_id - an integer corresponding to the player number of the caster
// source_character_id - an integer corresponding to the character number of the caster
// y_pos - y position to spawn spell
// TODO: smoother transitions?
// RETURNS - no clue

var target_player = argument0;
var source_player_id = argument1;
var source_character_id = argument2;

if(target_player.playerHealth <= 0){
	gameover_transition(source_player_id, source_character_id);
}