/// @description draw menu

//SETS FONTS AND HOW TO ALLIGN THE TEXTS
draw_set_font(menu_font);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

var OFFSET = 2;

//FOR EACH OPTION
for(var i = 0; i< menu_items; ++i){
	var txt = menu[i];
	//IF THIS OPTION IS CURRENT SELECTED
	if(menu_cursor == i){
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_white;
	}
	else{
		var col = c_gray;
	}
	
	var x_position = menu_x;
	var y_position = menu_y - (menu_item_height * (i*2));
	//black outline
	draw_set_color(c_black);
	draw_text(x_position - OFFSET, y_position, txt);
	draw_text(x_position + OFFSET, y_position, txt);
	draw_text(x_position, y_position + OFFSET, txt);
	draw_text(x_position, y_position - OFFSET, txt);
	//actual text
	draw_set_color(col);
	draw_text(x_position, y_position, txt);
}
