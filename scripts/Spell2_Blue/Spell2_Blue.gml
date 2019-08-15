hit_lag = strong_hit_lag;
	
//Spell effects
var inst = instance_create_depth(x, y, 0, obj_freeze);
inst.player_creator = player_id;
if(image_xscale > 0){
	inst.speed = 7;
}
else{
	inst.speed = -7;
}

StateSwitch(PLAYER_STATES.strongprojectile);