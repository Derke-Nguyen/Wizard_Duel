// Description : shows end game

//sets font and alignment
draw_set_font(menu_font);
	
draw_set_halign(fa_center);

//actual text
draw_set_color(menu_col);

if(show_end_menu){
	draw_set_valign(fa_top);
	draw_text(end_menu_x, end_menu_y, victor);
}

if(paused){
	if(pause_col_change > 30){
		var _col = menu_col;
	}
	else{
		var _col = c_black;
	}
	draw_set_color(_col);
	draw_text(end_menu_x, end_menu_y, "PAUSED");
	if(pause_col_change < 0){
		pause_col_change = 60;
	}
	pause_col_change--;
}
