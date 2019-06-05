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
	
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
		switch(menu_cursor){
			case 4: gl_numberofcharacters--;
			if(gl_numberofcharacters == 1)
				gl_numberofcharacters = 4;
			break;
			case 2: gl_sound = !gl_sound;
			break;
			case 1: gl_music = !gl_music;
			break;
		}
	}
	
	if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
		switch(menu_cursor){
			case 4: gl_numberofcharacters++;
			if(gl_numberofcharacters == 5)
				gl_numberofcharacters = 2;
			break;
			case 2: gl_sound = !gl_sound;
			break; 
			case 1: gl_music = !gl_music;
			break;
		}
	}
	//refreshes display
	menu[4] = "Number of Characters: " + string(gl_numberofcharacters);
	if(gl_sound)
		menu[2] = "Sound: On";
	else
		menu[2] = "Sound: Off";
	if(gl_music)
		menu[1] = "Music: On";
	else
		menu[1] = "Music: Off";
	
	//go back to main screen
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face3)){
		if(menu_cursor == 0 || menu_cursor == 3)
			menu_control = false;
	}
	
}

if(!menu_control){
	menu_y_target = gui_width + 400;
	if(menu_cursor == 0)
		room_goto(rms_mainscreen)
	if(menu_cursor == 3){
		instance_create_depth(0,0,0,obj_settings_controllers);
		instance_destroy();
	}
}
