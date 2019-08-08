// Description : controls the menu
if(select_buffer <= 0){
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		room_goto(CharacterSelect);
	}

	if(keyboard_check_pressed(vk_escape)){
		game_end();
	}
}

else{
	select_buffer--;
}