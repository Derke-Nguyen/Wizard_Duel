hit_lag = self_cast_hit_lag;
	
var inst = instance_create_layer(x, y, "EffectsTop", obj_punch);
inst.player_creator = player_id;
inst.directionOf = image_xscale;
inst.distance = 50;


if(image_xscale > 0){
	inst.image_xscale = 1;
}
else{
	inst.image_xscale = -1;
}
inst.hkb *= inst.image_xscale;
StateSwitch(PLAYER_STATES.mobility);