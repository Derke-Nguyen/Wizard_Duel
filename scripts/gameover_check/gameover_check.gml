var target_player = argument0;
var source_player_id = argument1;
var source_character_id = argument2;

if(target_player.playerHealth == 0){
	gameover_transition(source_player_id, source_character_id);
}