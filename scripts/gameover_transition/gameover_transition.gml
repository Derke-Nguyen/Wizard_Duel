/// gameover_transition(winner_id)
//  Does the game over transition
//  winner_id - the id of the player who "you're winner"d

globalvar gl_winner_id;
globalvar gl_winner_char;
gl_winner_id = argument0;
gl_winner_char = argument1;

room_goto(rms_gameover);

room_instance_add(rms_gameover, 0, 0, obj_gameover);
