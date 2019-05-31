/// @description creates global variables for game/player settings
// You can write your code in this editor
// player2controller - determines if player 2 wants to play with a controller instead of mouse/keyboard
//player1character - sets which character player 1 will play, by default sets it as red wizard
//player2character - sets which character player 2 will play, by default sets it as blue wizard
//player3character - sets which character player 3 will play, by default sets it as purple wizard
//player4character - sets which character player 4 will play, by default sets it as orange wizard


globalvar player2controller;

//for player characters
player2controller = false;
globalvar player1character;
player1character = 1;
globalvar player2character;
player2character = 2;
globalvar player3character;
player3character = 3;
globalvar player4character;
player4character = 4;

room_goto(rms_mainscreen);