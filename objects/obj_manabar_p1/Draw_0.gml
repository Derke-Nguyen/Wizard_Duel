draw_self();

if !instance_exists(obj_player1){
	exit;
}

draw_mana_ = lerp(draw_mana_, obj_player1.mana, 0.25);

draw_set_color(col);
draw_rectangle(x+4, y+4, x+91*draw_mana_/obj_player1.max_mana, y+11, false);
draw_set_color(c_white);
