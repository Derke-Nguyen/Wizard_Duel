draw_self();
var FONT_SCALE = 0.7;

var hp_x;
var hp_y;
var mana_x;
var mana_y;

if player_id == 2 {
	mana_x = room_width - 75;
	mana_y = room_height  + 10;
	hp_x = room_width;
	hp_y = room_height + 10;
} else {
	mana_x = 100;
	mana_y = room_height  + 10;
	hp_x = 25;
	hp_y = room_height + 10;
}

draw_text_transformed_color(mana_x, mana_y, floor(mana), FONT_SCALE, FONT_SCALE, 0, c_blue, c_blue, c_blue, c_blue, 0.5);
draw_text_transformed_color(hp_x, hp_y, playerHealth, FONT_SCALE, FONT_SCALE, 0, c_red, c_red, c_red, c_red, 0.5);