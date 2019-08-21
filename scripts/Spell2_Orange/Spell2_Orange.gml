hit_lag = self_cast_hit_lag;
	
var inst = instance_create_depth(x, y, 0, obj_punch);
inst.player_creator = player_id;
inst.directionOf = image_xscale;
inst.distance = 50;


if(image_xscale > 0){
	inst.image_xscale = 1;
}
else{
	inst.image_xscale = -1;
}

StateSwitch(PLAYER_STATES.weakprojectile);