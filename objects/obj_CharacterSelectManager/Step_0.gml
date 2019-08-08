if(resetbuffer <= 0){
	if(keyboard_check_pressed(vk_escape)){
		if(confirmed > 0){
			player1_select.confirm = false;
			player2_select.confirm = false;
			confirmed = 0;
			resetbuffer = 60;
		}
		else{
			room_goto(MainMenu);
		}
	}
}

if(resetbuffer > 0){
	--resetbuffer;
}



if(confirmed == 2){
	image_alpha = 1;
	GLOBAL_PLAYER_1_TYPE = player1_select.index;
	GLOBAL_PLAYER_2_TYPE = player2_select.index;
	if(player1.CONFIRM_KEY || player2.CONFIRM_KEY){
		room_goto(GameRoom);
	}
}