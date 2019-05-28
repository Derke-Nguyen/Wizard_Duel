/// @description Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 6;

//WHERE THE TEXT STARTS COMING FROM
menu_x = gui_width/2;
menu_y = gui_height - 1000;

//WHERE IT IS DRAWN/CENTERED
menu_y_target = gui_height - gui_margin;
menu_speed = 15;//lower is faster
menu_font = fMenu;
menu_item_height = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[3] = "Start Game";
menu[2] = "Help"
menu[1] = "Settings";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 3;

up[0] = vk_up;
up[1] = ord("W");

down[0] = vk_down;
down[1] = ord("S");

