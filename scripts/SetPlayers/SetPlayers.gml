//Description : sets player controls and location
//argument 0 - player 1
//argument 1 - player 2

//Player 1
player1 = argument0;

var p1_x = random_range(190,1010);
var p1_y = random_range(90, 890);

argument0.x = p1_x;
argument0.y = p1_y;

//Player 2
argument1.inputs[0] = vk_right; //right
argument1.inputs[1] = vk_left; //left
argument1.inputs[2] = vk_up; //up
argument1.inputs[3] = vk_down; //down

argument1.inputs[4] = vk_numpad1; //spell1
argument1.inputs[5] = vk_numpad2; //spell2
argument1.inputs[6] = vk_numpad3; //spell3

var p2_x = random_range(1010,1830);
var p2_y = random_range(90, 890);

argument1.x = p2_x;
argument1.y = p2_y;
argument0.player_id = 1;

