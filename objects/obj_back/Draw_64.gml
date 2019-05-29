/// @description draws the thing

/// @description draw menu

//SETS FONTS AND HOW TO ALLIGN THE TEXTS
draw_set_font(menu_font);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

var OFFSET = 2;

//For drawing the text
var txt = text;
var col = c_white;

var x_position = menu_x;
var y_position = menu_y;
//black outline
draw_set_color(c_black);
draw_text(x_position - OFFSET, y_position, txt);
draw_text(x_position + OFFSET, y_position, txt);
draw_text(x_position, y_position + OFFSET, txt);
draw_text(x_position, y_position - OFFSET, txt);
//actual text
draw_set_color(col);
draw_text(x_position, y_position, txt);

