hit_lag = self_cast_hit_lag;
	
//Spell effects

var inst = instance_create_depth(x, y, 0, obj_invincibility);
inst.player_creator = player_id;

StateSwitch(PLAYER_STATES.selfcast);