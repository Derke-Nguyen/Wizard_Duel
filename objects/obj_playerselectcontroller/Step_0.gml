/// @description Insert description here
// You can write your code in this editor
if(delay > 0){
	delay--;
}
if(delay <= 0){
	if(numofplayers == gl_numberofcharacters){
		image_alpha = 1;
		if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)|| gamepad_button_check(0,gp_face3)){
			room_goto(rms_game);
		}
	}
}