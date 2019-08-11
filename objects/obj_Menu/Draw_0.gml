/// Description : draws the menu

//sets font and alignment
draw_set_font(menu_font);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

//Different colors
if(menu_color_change > 30){
	var _col = c_ltgray;
}
else{
	var _col = c_black;
}
	
var _y_position = menu_y - (menu_item_height);

//actual text
draw_set_color(_col);
draw_text(menu_x, _y_position, prompt);

if(menu_color_change < 0){
	menu_color_change = 60;
}
menu_color_change--;
