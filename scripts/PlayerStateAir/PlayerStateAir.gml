//Description: PlayerStateAir() - what to do when player is in the air

if(state_timer == 1){
	UseBufferedInput();
}

sprite_index = SPRITE_PLAYER_JUMP;

//Gravity
if(vspd <= vterminal){
	vspd += GRAV;
}
if(vspd > vterminal){
	vspd -= GRAV;
}

//Move
if(right_key){
	image_xscale = 1;
	if(hspd < air_speed){
		hspd += air_acceleration;
	}
	if(hspd > air_speed && !knocked_back){
		hspd = air_speed;
	}
}

if(left_key){
	image_xscale = -1;
	if (hspd > -air_speed) {
		hspd -= air_acceleration;
	}
	if (hspd < -air_speed && !knocked_back) {
		hspd = -air_speed;
	}
}

if (!right_key && !left_key || right_key && left_key) {
	if (hspd >= air_deceleration) {
		hspd -= air_deceleration;
	}
	if (sign(hspd) ==  1 && hspd < air_deceleration) {
		hspd = 0;
	}
	
	if (hspd <= -air_deceleration) {
		hspd += air_deceleration;
	}
	if (sign(hspd) == -1 && hspd > -air_deceleration) {
		hspd = 0;
	}
}

//buffered jump, double jump
if(up_key){
	jump_buffer_timer = jump_buffer_timer_max;
}

//fastfall
if(down_key){
	vspd += GRAV;
}

//Horizontal
if(place_meeting(x + hspd, y, obj_Solid)){
	while(!place_meeting(x+ sign(hspd), y, obj_Solid)){
		x += sign(hspd);
	}
	hspd = 0;
}

x += hspd;

//Vertical
if(place_meeting(x,y+vspd, obj_Solid)){
	while(!place_meeting(x, y + sign(vspd), obj_Solid)){
		y+= sign(vspd);
	}
	
	if(sign(vspd) == 1){
		if(right_key || left_key){
			StateSwitch(PLAYER_STATES.run);
		}
		else{
			StateSwitch(PLAYER_STATES.idle);
		}
		with(instance_create_layer(x, bbox_bottom, "EffectsTop", obj_DustLand2)){
			image_xscale = other.image_xscale;
		}
		//sound player land
	}
	
	vspd = 0;
}

PlatformCollisions(true);

y += vspd;

PlayerCast();