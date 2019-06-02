/// @description creates global variables for game/player settings
// player2controller - determines if player 2 wants to play with a controller instead of mouse/keyboard
// player1character - sets which character player 1 will play, by default sets it as red wizard
// player2character - sets which character player 2 will play, by default sets it as blue wizard
// player3character - sets which character player 3 will play, by default sets it as purple wizard
// player4character - sets which character player 4 will play, by default sets it as orange wizard


globalvar gl_player2controller;
gl_player2controller = false;

//for player characters
globalvar gl_player1character;
gl_player1character = 1;
globalvar gl_player2character;
gl_player2character = 2;
globalvar gl_player3character;
gl_player3character = 3;
globalvar gl_player4character;
gl_player4character = 4;

globalvar gl_winner_id;
globalvar gl_winner_char;

room_goto(rms_mainscreen);