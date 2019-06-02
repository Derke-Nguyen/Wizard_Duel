/// gameover_transition(gl_winner_id, gl_winner_char)
// Sets the end game room with the player winner and what character they played
// gl_winner_id - Returns the integer of the player that is the winner
// gl_winner_char - Returns the integer of the character of the winner
// TODO: smoother transitions?
// RETURNS - no clue


gl_winner_id = argument0;
gl_winner_char = argument1;

room_goto(rms_gameover);

room_instance_add(rms_gameover, 0, 0, obj_gameover);
