/// @description control menu

menu_y += (menu_y_target - menu_y) /menu_speed;

//keyboard controls

if(menu_control){
	if(keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if(menu_cursor >= menu_items){
			menu_cursor = 0;
		}
	}
	if(keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if(menu_cursor < 0){
			menu_cursor = menu_items-1;
		}
	}
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		menu_y_target = gui_width + 400;
		menu_committed = menu_cursor;
		//ScreenShake(4,30);
		menu_control = false;
	}
}

if(menu_committed != -1){
	switch(menu_committed){
		case 0: game_end();
		break;
		case 2: room_goto(rms_game);
		break;
	}
}
	
