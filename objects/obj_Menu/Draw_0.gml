/// Description : draws the menu

//sets font and alignment
draw_set_font(menu_font);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

//Different colors
if(menu_color_change > 30){
	var _col = c_white;
}
else{
	var _col = c_black;
}
	
//actual text
draw_set_color(_col);
draw_text(view_wport[0] * 0.5, view_hport[0] * 0.8, prompt);

if(menu_color_change < 0){
	menu_color_change = 60;
}
menu_color_change--;
