//Description : sets player
//argument 0 - player 1
//argument 1 - player 2

//Player 1
player1 = argument0;
argument0.x = 240;
argument0.y = 111;

//Player 2
argument1.inputs[0] = vk_right; //right
argument1.inputs[1] = vk_left; //left
argument1.inputs[2] = vk_up; //up
argument1.inputs[3] = vk_down; //down

argument1.inputs[4] = vk_numpad1; //spell1
argument1.inputs[5] = vk_numpad2; //spell2
argument1.inputs[6] = vk_numpad3; //spell3

argument1.x = 1549;
argument1.y = 111;
argument0.player_id = 1;

