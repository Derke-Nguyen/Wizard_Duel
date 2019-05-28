/// @description if triggered just go back

//moves it onto the screen
menu_y += (menu_y_target - menu_y) /menu_speed;

//keyboard controls

if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face3)){
	menu_y_target = gui_width+400;
	room_goto(rms_main_screen);
}
