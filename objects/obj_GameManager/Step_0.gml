
if(show_end_menu && (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))){
	room_goto(MainMenu);
}

if(keyboard_check_pressed(vk_escape)){
	room_goto(MainMenu);
}
