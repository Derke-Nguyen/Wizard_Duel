hit_lag = weak_hit_lag;
	
//Spell effects
var inst = instance_create_depth(x, y, 0, obj_freeze);
inst.player_creator = player_id;
inst.time = 150;
if(image_xscale > 0){
	inst.speed = 7;
}
else{
	inst.speed = -7;
}

StateSwitch(PLAYER_STATES.weakprojectile);