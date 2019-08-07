draw_self();

if !instance_exists(player){
	exit;
}

draw_health_ = lerp(draw_health_, player.hp_current, 0.25);
draw_mana_ = lerp(draw_mana_, player.mp_current, 0.25);

draw_set_color(colhp1);
draw_rectangle(x+4, y+4, x+(sprite_width-4)*draw_health_/player.hp_max, y+11, false);
draw_set_color(colhp2);
draw_rectangle(x+4, y+8, x+(sprite_width-4)*draw_health_/player.hp_max, y+11, false);

draw_set_color(colmp1);
draw_rectangle(x+4, y+4+16, x+(sprite_width-4)*draw_mana_/player.mp_max, y+11+16, false);
draw_set_color(colmp2);
draw_rectangle(x+4, y+8+16, x+(sprite_width-4)*draw_mana_/player.mp_max, y+11+16, false);
draw_set_color(c_white);