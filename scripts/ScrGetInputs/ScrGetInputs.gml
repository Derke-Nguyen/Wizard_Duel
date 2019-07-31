//Description: ScrGetInputs() - gets keypresses of the player

var inputArray = argument[0];

right_key = keyboard_check(inputArray[0]);
left_key = keyboard_check(inputArray[1]);
up_key = keyboard_check(inputArray[2]);
down_key = keyboard_check(inputArray[3]);

spell1_key = keyboard_check_pressed(inputArray[4]);
spell2_key = keyboard_check_pressed(inputArray[5]);
spell3_key = keyboard_check_pressed(inputArray[6]);

