//Description : creates the character select objects

image_alpha = 0.5;

select_flicker = 60;

player1_select = instance_create_layer(480, 320, "Instances", obj_CharacterSelect);
player2_select = instance_create_layer(1376, 320, "Instances", obj_CharacterSelect);

//sets player 2 select controls
player2_select.LEFT_KEY = vk_left;
player2_select.RIGHT_KEY = vk_right;
player2_select.CONFIRM_KEY = vk_numpad1;

player2_select.image_xscale = -1;
