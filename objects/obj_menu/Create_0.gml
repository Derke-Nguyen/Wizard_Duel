/// @description Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 6;

menu_x = gui_width - 400;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 15;//lower is faster
menu_font = fMenu;
menu_item_height = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "Start Game";
menu[1] = "Settings";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;