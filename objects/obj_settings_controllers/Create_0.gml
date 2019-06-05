/// @description Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 6;

//WHERE THE TEXT STARTS COMING FROM
menu_x = gui_width/2;
menu_y = gui_height - 1000;

//WHERE IT IS DRAWN/CENTERED
menu_y_target = gui_height - gui_margin - 300;
menu_speed = 15;//lower is faster
menu_font = fMenu;
menu_item_height = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

controllers[0] = "Back";
for(var i = 2; i <= gl_numberofcharacters; i++){
	if(i == 1){
		if(gl_player1controller)
			controllers[4] = "Player 1: Controller";
		else
			controllers[4] = "Player 1: Keyboard";
	}
	if(i == 2){
		if(gl_player1controller)
			controllers[3] = "Player 2: Controller";
		else
			controllers[3] = "Player 2: Keyboard";
	}
	if(i == 3){
		if(gl_player3controller)
			controllers[2] = "Player 3: Controller";
		else
			controllers[2] = "Player 3: Keyboard";
	}
	if(i == 4){
		if(gl_player4controller)
			controllers[1] = "Player 4: Controller";
		else
			controllers[1] = "Player 4: Keyboard";
	}

}

menu_items = array_length_1d(controllers);
menu_cursor = menu_items - 1;

up[0] = vk_up;
up[1] = ord("W");

down[0] = vk_down;
down[1] = ord("S");