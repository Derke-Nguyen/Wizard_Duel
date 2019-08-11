hit_lag = weak_hit_lag;

//Spell Effects
var inst = instance_create_layer(x, y, "EffectsTop", obj_fireball);
inst.player_creator = player_id;
inst.player = id;
if(image_xscale < 0){
	inst.directionOf = -1;
	inst.speed = -50;
}
else{
	inst.directionOf = 1;
	inst.speed = 50;
}
inst.hkb *= image_xscale;

StateSwitch(PLAYER_STATES.weakprojectile);
