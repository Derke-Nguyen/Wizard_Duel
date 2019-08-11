//Description: ScrGetInputs() - gets keypresses of the player

var inputArray = argument[0];
//[right, left, up, down, spell1, spell2, spell3]

//movement
right_key = keyboard_check(inputArray[0]);
left_key = keyboard_check(inputArray[1]);
up_key = keyboard_check(inputArray[2]);
down_key = keyboard_check(inputArray[3]);

//combat
spell1_key = keyboard_check_pressed(inputArray[4]);
spell2_key = keyboard_check_pressed(inputArray[5]);
spell3_key = keyboard_check_pressed(inputArray[6]);

