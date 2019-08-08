if((!instance_exists(player1) || !instance_exists(player2)) && !show_end_menu){
	show_end_menu = true;
	if(!instance_exists(player1)){
		image_index = 2;
	}
	if(!instance_exists(player2)){
		image_index = 1;
	}
	audio_stop_all();
}

if(show_end_menu){
	end_menu_alpha += 0.1;
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		room_goto(CharacterSelect);
	}
}

if(keyboard_check_pressed(vk_escape)){
	room_goto(MainMenu);
}

image_alpha = end_menu_alpha;
