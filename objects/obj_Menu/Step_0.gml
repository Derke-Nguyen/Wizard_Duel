// Description : controls the menu
if(select_buffer <= 0){
	//goes into character select
	
	//if esc is pressed quit game
	if(keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_end)){
		game_end();
	}
	else if(keyboard_check_pressed(vk_anykey)){
		room_goto(CharacterSelect);
	}
}

else{
	select_buffer--;
}