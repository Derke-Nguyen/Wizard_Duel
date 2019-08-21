hit_lag = weak_hit_lag;


var inst = instance_create_depth(x, y, 100, obj_void);
inst.image_xscale = 10;
inst.image_yscale = 10;
inst.player_creator = player_id;


StateSwitch(PLAYER_STATES.weakprojectile);