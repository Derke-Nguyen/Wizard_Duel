/// @description Insert description here
// You can write your code in this editor
if(player != 2 || !player2controller){
	if(keyboard_check_pressed(LEFT_KEY)){
		left = true;
	}

	if(keyboard_check_pressed(RIGHT_KEY)){
		right = true;
	}
}

if(player == 2 && player2controller){
	if(gamepad_button_check_pressed(0,LEFT_KEY)){
		left = true;
		}
	}

	if(gamepad_button_check_pressed(0,RIGHT_KEY)){
		right = true;
}

if(left){
	index--;
	if(index < 1){
		index = 4;
	}
}
if(right){
	index++;
	if(index > 4){
		index = 1;
	}
}

right = false;
left = false;
image_index = index-1;

if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check(0,gp_face3)){
	//set player;
	set_player(player, index);
}