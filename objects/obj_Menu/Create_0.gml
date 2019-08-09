// Description : creates the words and options "Start" and "Quit"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 3;

//WHERE THE TEXT STARTS COMING FROM
menu_x = gui_width/1.6;
menu_y = gui_height - gui_margin;

//WHERE IT IS DRAWN/CENTERED
menu_font = Pixel;
menu_item_height = font_get_size(Pixel);

menu_color_change = 60;

//Options for Display
prompt = "START GAME";

select_buffer = 20;