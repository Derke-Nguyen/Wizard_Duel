hit_lag = weak_hit_lag;


var inst = instance_create_depth(x, y, 100, obj_void);
inst.player_creator = player_id;
inst.hkb *= image_xscale;


StateSwitch(PLAYER_STATES.weakprojectile);