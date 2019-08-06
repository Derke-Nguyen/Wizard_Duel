if(!instance_exists(player1)){
	//player 2 win screen
	image_index = 2;
	show_end_menu = true;
}

if(!instance_exists(player2)){
	//player 1 win
	image_index = 1;
	show_end_menu = true;
}

if(show_end_menu && (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))){
	room_goto(CharacterSelect);
}

if(keyboard_check_pressed(vk_escape)){
	room_goto(MainMenu);
}
