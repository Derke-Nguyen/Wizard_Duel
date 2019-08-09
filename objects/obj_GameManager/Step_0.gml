if(!paused){
	//end of game
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
	
	//puts back into character select
	if(show_end_menu){
		end_menu_alpha += 0.02;
		if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
			audio_stop_all();
			room_goto(CharacterSelect);
		}
	}

	image_alpha = end_menu_alpha;
}

else{
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		paused = false;
	}
	if(keyboard_check_pressed(vk_escape)){
		audio_stop_all();
		room_goto(MainMenu);
	}
}

//pause menu
if(keyboard_check_pressed(vk_escape) && !paused && !show_end_menu){
		image_index = 3;
		image_alpha = 1;
		paused = true;
}