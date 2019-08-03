/// @description Insert description here
// You can write your code in this editor
if(!confirm){
	if(keyboard_check_pressed(LEFT_KEY)){
		left = true;
	}

	if(keyboard_check_pressed(RIGHT_KEY)){
		right = true;
	}
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

if(keyboard_check_pressed(CONFIRM_KEY)){
	obj_CharacterSelectManager.confirmed++;
	obj_CharacterSelectManager.player1type = index;
	confirm = true;
	image_alpha = 0.5;
}