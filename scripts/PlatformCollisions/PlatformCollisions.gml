//Description : PlatformCollisions(t_SwitchStates) - switches states if you collide with a platform

var t_SwitchStates = argument[0];

if(vspd > 0){
	collision_rectangle_list(bbox_left, bbox_bottom, bbox_right, bbox_bottom + ceil(vspd), obj_OneWayPlatform, false, true, platform_list, false);
	//go through each colliding platform if we are on top and not inside
	
	for(var i = 0; i < ds_list_size(platform_list); i++){
		var current_platform = ds_list_find_value(platform_list, i);
		if(!place_meeting(x, y, current_platform)){
			while(!place_meeting(x, y + sign(vspd), current_platform)){
				y += sign(vspd);
			}
			
			if(t_SwitchStates){
				if(right_key || left_key){
					StateSwitch(PLAYER_STATES.run);
				}
				else{
					StateSwitch(PLAYER_STATES.idle);
				}
			}
			
			with(instance_create_layer(x, bbox_bottom, "EffectsTop", obj_DustLand2)){
				image_xscale = other.image_xscale;
			}
			//scr_sound player land
			vspd = 0;
			break;
		}
	}
	ds_list_clear(platform_list);
}