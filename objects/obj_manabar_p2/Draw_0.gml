draw_self();

if !instance_exists(obj_player2){
	exit;
}

draw_mana_ = lerp(draw_mana_, obj_player2.mana, 0.25);

draw_set_color(col1);
draw_rectangle(x+4, y+4, x+91*draw_mana_/obj_player2.c_max_mana, y+11, false);
draw_set_color(col2);
draw_rectangle(x+4, y+8, x+91*draw_mana_/obj_player2.c_max_mana, y+11, false);
draw_set_color(c_white);
