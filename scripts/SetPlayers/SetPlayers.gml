//Description : SetPlayers(player1, player2) sets player controls and location

//Player 1
//randomizes spawn location
var p1_x = random_range(120,500);
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

//randomizes spawn location
var p2_x = random_range(1500,1880);
var p2_y = random_range(90, 890);
argument1.x = p2_x;
argument1.y = p2_y;
argument1.player_id = 1;

//if the two players are the same type, change the color of the second player
if(argument0.color_current == argument1.color_current){
	argument1.same_type = true;
}


