/// @description control settings

menu_y += (menu_y_target - menu_y) /menu_speed;

//keyboard controls

if(menu_control){
	for(var v = 0; v < array_length_1d(up); v++){
		if(keyboard_check_pressed(up[v]) || gamepad_button_check_pressed(0,gp_padu)){
			++menu_cursor;
			if(menu_cursor >= menu_items){
				menu_cursor = 0;
			}
			break;
		}
	}
	for(var b = 0; b < array_length_1d(down); b++){	
		if(keyboard_check_pressed(down[b]) || gamepad_button_check_pressed(0,gp_padd)){
		--menu_cursor;
			if(menu_cursor < 0){
				menu_cursor = menu_items-1;
			}
			break;
		}
	}
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face3)){
		menu_committed = menu_cursor;
		//ScreenShake(4,30);
		menu_control = false;
	}
}

if(menu_committed == 0){
menu_y_target = gui_width + 400;
room_goto(rms_main_screen)
}

if(menu_committed != -1){
	switch(menu_committed){
		case 1: //turn off music
		break;
		case 2: // turn off sound effects
		break;
		case 3: //something
		break;
		case 4:
		if(player2controller){
			 player2controller = false;
			 menu[4] = "Player 2: Keyboard Monkey";
			 break;
		}
		else {
			player2controller = true;
			menu[4] = "Player 2: Controller Hog";
			break;
		}//set player 2 to controller
		break;
	}
	menu_committed = -1;
	menu_control = true;
}
	
