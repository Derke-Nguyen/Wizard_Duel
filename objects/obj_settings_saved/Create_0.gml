/// @description creates global variables for game/player settings

// gl_music - determines if music is played
// gl_sound - determines if sound is played

// gl_player1controller - determines if player 1 wants to play with a controller instead of mouse/keyboard
// gl_player2controller - determines if player 2 wants to play with a controller instead of mouse/keyboard
// gl_player3controller - determines if player 3 wants to play with a controller instead of mouse/keyboard
// gl_player4controller - determines if player 4 wants to play with a controller instead of mouse/keyboard

// gl_player1character - sets which character player 1 will play, by default sets it as red wizard
// gl_player2character - sets which character player 2 will play, by default sets it as blue wizard
// gl_player3character - sets which character player 3 will play, by default sets it as purple wizard
// gl_player4character - sets which character player 4 will play, by default sets it as orange wizard

// gl_winner_id - determines who is the winner;
// gl_winner_char - determines which character is the winner 

globalvar gl_music;
gl_music = true;
globalvar gl_sound;
gl_sound = true;

globalvar gl_numberofcharacters;
gl_numberofcharacters = 2;

globalvar gl_player1controller;
globalvar gl_player2controller;
globalvar gl_player3controller;
globalvar gl_player4controller;

gl_player1controller = false;
gl_player2controller = false;
gl_player3controller = false;
gl_player4controller = false;

//for player characters
globalvar gl_player1character;
globalvar gl_player2character;
globalvar gl_player3character;
globalvar gl_player4character;


gl_player1character = 1;
gl_player2character = 2;
gl_player3character = 3;
gl_player4character = 4;

globalvar gl_winner_id;
globalvar gl_winner_char;

room_goto(rms_mainscreen);