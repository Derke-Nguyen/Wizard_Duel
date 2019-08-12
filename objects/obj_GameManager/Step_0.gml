if(!paused){
	//end of game
	if((!instance_exists(player1) || !instance_exists(player2)) && !show_end_menu){
		show_end_menu = true;
		if(!instance_exists(player1)){
			victor = "PLAYER 1 WIN!";
		}
		if(!instance_exists(player2)){
			victor = "PLAYER 2 WIN!";
		}
		audio_stop_all();
	}
	
	//puts back into character select
	if(show_end_menu){
		if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape)){
			audio_stop_all();
			room_goto(CharacterSelect);
		}
	}

}

else{
	instance_deactivate_all(1);
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		paused = false;
		if(sprite_exists(screenShot)){
			sprite_delete(screenShot);
		}
		instance_activate_all();
		audio_resume_all();
	}
	if(keyboard_check_pressed(vk_escape)){
		if(sprite_exists(screenShot)){
			sprite_delete(screenShot);
		}
		audio_stop_all();
		room_goto(MainMenu);
	}
}

//pause menu
if(keyboard_check_pressed(vk_escape) && !paused && !show_end_menu){
		paused = true;
		if(!sprite_exists(screenShot)){
			screenShot = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, 0, 0, 0, 0);
		}
		audio_pause_all();
}