/// @description control menu

menu_y += (menu_y_target - menu_y) /menu_speed;

//keyboard controls

if(menu_control){
	for(var i = 0; i < array_length_1d(up); i++){
		if(keyboard_check_pressed(up[i]) || gamepad_button_check_pressed(0,gp_padu)){
			menu_cursor++;
			if(menu_cursor >= menu_items){
				menu_cursor = 0;
			}
			break;
		}
	}
	for(var j = 0; j < array_length_1d(down); j++){	
		if(keyboard_check_pressed(down[j]) || gamepad_button_check_pressed(0,gp_padd)){
		menu_cursor--;
			if(menu_cursor < 0){
				menu_cursor = menu_items-1;
			}
			break;
		}
	}
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face3)){
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
		case 1: room_goto(rms_settings);
		break;
		case 2: room_goto(rms_game);
		break;
	}
}
	
