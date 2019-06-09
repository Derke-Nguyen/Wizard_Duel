draw_self();

if !instance_exists(obj_player){
	exit;
}

draw_health_ = lerp(draw_health_, obj_player.playerHealth, 0.25);

draw_set_color(colhp1);
draw_rectangle(x+4, y+4, x+91*draw_health_/obj_player.c_max_health, y+11, false);
draw_set_color(colhp2);
draw_rectangle(x+4, y+8, x+91*draw_health_/obj_player.c_max_health, y+11, false);

draw_set_color(colmp1);
draw_rectangle(x+4, y+4+16, x+91*draw_health_/obj_player.c_max_mana, y+11+16, false);
draw_set_color(colmp2);
draw_rectangle(x+4, y+8+16, x+91*draw_health_/obj_player.c_max_mana, y+11+16, false);
draw_set_color(c_white);