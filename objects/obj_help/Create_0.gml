/// @description help screen setup

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

text[0] = ">Back<";

