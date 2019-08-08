draw_self();

if !instance_exists(player){
	exit;
}

draw_health_ = lerp(draw_health_, player.hp_current, 0.25);
draw_mana_ = lerp(draw_mana_, player.mp_current, 0.25);

draw_set_color(colhp1);
draw_rectangle(x + 10, y + 10, x + (sprite_width - 10) * draw_health_ / player.hp_max, y + 44 - 7, false);
draw_set_color(colhp2);
draw_rectangle(x + 10, y + 10 + 13, x + (sprite_width - 10) * draw_health_ / player.hp_max, y + 44 - 7, false);

draw_set_color(colmp1);
draw_rectangle(x + 10, y + 51 + 7, x + (sprite_width - 10) * draw_mana_ / player.mp_max, y + 92 - 7, false);
draw_set_color(colmp2);
draw_rectangle(x + 10, y + 51 + 7 + 13, x + (sprite_width - 10) * draw_mana_ / player.mp_max, y + 92 - 7, false);
draw_set_color(c_white);