draw_self();

if !instance_exists(obj_player2){
	exit;
}

draw_health_ = lerp(draw_health_, obj_player2.playerHealth, 0.25);

draw_set_color(col);
draw_rectangle(x+4, y+4, x+91*draw_health_/obj_player2.max_health, y+11, false);
draw_set_color(c_white);
