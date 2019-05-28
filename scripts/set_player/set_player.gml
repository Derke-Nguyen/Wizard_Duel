/// set_player(player_id, character_id);
// Sets the player as a different character
// player_id - an integer corresponding to the player number
//                   This is probably 1, 2, 3, 4 for player 1, player 2, etc
// character_id - an integer corresponding to the character number
//                   1 - red wizard
//                   2 - blue wizard
//                   3 - purple wizard
//                   4 - orange wizard

// y_pos - y position to spawn bullet
// hsp - the bullet's horizontal speed to spawn with
// TODO: Allow for non horizontal bullet movement?
// RETURNS - the id of the bullet (probably an int)

var player_id = argument0;
var character_id = argument1;

switch(player_id){
case 1:
	switch(character_id){
		case 1: player1character = 1;
		break;
		case 2: player1character = 2;
		break;
		case 3: player1character = 3;
		break;
		case 4: player1character = 4;
		break;
	};
break;
case 2:
	switch(character_id){
		case 1: player2character = 1;
		break;
		case 2: player2character = 2;
		break;
		case 3: player2character = 3;
		break;
		case 4: player2character = 4;
	};
break;
};