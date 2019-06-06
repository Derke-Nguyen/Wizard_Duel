/// @description control settings

menu_y += (menu_y_target - menu_y) /menu_speed;

//keyboard controls

if(menu_control){
	//checks if you pressed up
	for(var v = 0; v < array_length_1d(up); v++){
		if(keyboard_check_pressed(up[v]) || gamepad_button_check_pressed(0,gp_padu)){
			++menu_cursor;
			if(menu_cursor >= menu_items){
				menu_cursor = 0;
			}
			break;
		}
	}
	//checks if you pressed down
	for(var b = 0; b < array_length_1d(down); b++){	
		if(keyboard_check_pressed(down[b]) || gamepad_button_check_pressed(0,gp_padd)){
		--menu_cursor;
			if(menu_cursor < 0){
				menu_cursor = menu_items-1;
			}
			break;
		}
	}
	
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
		switch(menu_cursor){
			case 4: gl_player4controller = !gl_player4controller;
			break;
			case 3: gl_player3controller = !gl_player3controller;
			break;
			case 2: gl_player2controller = !gl_player2controller;
			break;
			case 1: gl_player1controller = !gl_player1controller;
			break;
		}
	}
	
	//refreshes display
	if(gl_player1controller)
		controllers[1] = "Player 1: Controller";
	else
		controllers[1] = "Player 1: Keyboard";
	if(gl_player2controller)
		controllers[2] = "Player 2: Controller";
	else
		controllers[2] = "Player 2: Keyboard";
	if(gl_player3controller)
		controllers[3] = "Player 3: Controller";
	else
		controllers[3] = "Player 3: Keyboard";
	if(gl_player4controller)
		controllers[4] = "Player 4: Controller";
	else
		controllers[4] = "Player 4: Keyboard";
	
	//go back to main screen
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face3)){
		if(menu_cursor == 0)
			menu_control = false;
	}
	
}

if(!menu_control){
	instance_create_depth(0,0,0,obj_settings);
	instance_destroy();
}
