if(keyboard_check_pressed(vk_escape)){
	room_goto(MainMenu);
}

if(confirmed == 2){
	image_alpha = 2;
	GLOBAL_PLAYER_1_TYPE = player1type;
	GLOBAL_PLAYER_2_TYPE = player2type;
	if(keyboard_check(vk_enter) || keyboard_check(vk_space)){
		room_goto(GameRoom);
	}
}