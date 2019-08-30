hit_lag = weak_hit_lag;
	
//Spell effects
var temp = instance_create_depth(x + (image_xscale * 32), y, 0, obj_consecutive_punches);
temp.player_creator = player_id;
temp.player_reference = id;

if(player_id == 1){
	var count = obj_p1_count.count;
}
else{
	var count = obj_p2_count.count;
}

temp.image_xscale = 3 + (0.5*count);
temp.damage = 5 + (3 * count);
temp.heal = 3 + (2.5 * count);
temp.hkb = 10 + (2 * count);
temp.vkb = -10 - (2 * count);
temp.shake = 10 + (5 * count);

StateSwitch(PLAYER_STATES.weakprojectile);