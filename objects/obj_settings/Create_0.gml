/// @description settings setup

/// @description Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 6;

//WHERE THE TEXT STARTS COMING FROM
menu_x = gui_width/2;
menu_y = gui_height - 1000 ;

//WHERE IT IS DRAWN/CENTERED
menu_y_target = gui_height - 200;
menu_speed = 15;//lower is faster
menu_font = fMenu;
menu_item_height = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

if(!gl_player2controller){
	menu[4] = "Player 2: Keyboard Monkey";
}
if(gl_player2controller){
	menu[4] = "Player 2: Controller Hog";
}
menu[3] = "something";
menu[2] = "Sound: On";
menu[1] = "Music: On";
menu[0] = "Back";

menu_items = array_length_1d(menu);
//where the cursor starts
menu_cursor = 4;

up[0] = vk_up;
up[1] = ord("W");

down[0] = vk_down;
down[1] = ord("S");
