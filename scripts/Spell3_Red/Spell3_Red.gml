hit_lag = strong_hit_lag;
	
//Spell Effects

var inst = instance_create_depth(x, y, 0, obj_LASER);
if(image_xscale > 0){
	inst.image_xscale = -1;
	inst.facing = -1;
}
else{
	inst.facing = 1;
}

inst.hkb *= image_xscale;
inst.player_creator = player_id;

StateSwitch(PLAYER_STATES.strongprojectile);