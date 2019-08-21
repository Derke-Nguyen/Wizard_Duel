hit_lag = self_cast_hit_lag;
	
var inst = instance_nearest(x, y, obj_tp_point);
x = inst.x;
y = inst.y;

StateSwitch(PLAYER_STATES.selfcast);