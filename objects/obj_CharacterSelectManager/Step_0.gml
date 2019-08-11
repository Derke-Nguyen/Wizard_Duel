//Description : checks if there are confirms to move to next room

//If esc is pressed when no confirms - moves back to title screen
if(!player1_select.confirm && !player2_select.confirm){
	if(keyboard_check_pressed(vk_escape)){
		room_goto(MainMenu);
	}
}

//resets if there are confirms so you can change selection
if(keyboard_check_pressed(vk_escape)){
	player1_select.confirm = false;
	player2_select.confirm = false;
	image_alpha = 0.5;
}

if(player1_select.confirm && player2_select.confirm){
	select_flicker--;
	if(select_flicker < 30){	
		image_alpha = 1;
	}
	else{
		image_alpha = 0.5;
	}
	
	if(select_flicker <= 0){
		select_flicker = 60;
	}
	
	//GAME START
	if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)){
		GLOBAL_PLAYER_1_TYPE = player1_select.index;
		GLOBAL_PLAYER_2_TYPE = player2_select.index;
		room_goto(GameRoom);
	}
}