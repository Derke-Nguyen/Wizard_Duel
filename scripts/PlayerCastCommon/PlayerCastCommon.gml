//Description : PlayerCastCommon() - a common effect in all spells such as freezing in air and stuff

//if casting in the air
if(!place_meeting(x, y + 1, obj_Solid) && !PlatformBelow()){
		
	//Gravity
	if(vspd <= vterminal){
		vspd += GRAV;
	}
	if(vspd > vterminal){
		vspd -= GRAV;
	}
	
	//right
	if(right_key){
		if(hspd < air_speed){
			hspd += air_acceleration;
		}
		if(hspd > air_speed && !knocked_back){
			hspd = air_speed;
		}
	}
	
	//left
	if(left_key){
		if(hspd > -air_speed){
			hspd -= air_acceleration;
		}
		if(hspd < -air_speed && knocked_back){
			hspd = -air_speed;
		}
	}
	
	//both or neither is pressed, no horizontal movement
	if(!right_key && !left_key || right_key && left_key){
		if(hspd >= air_deceleration){
			hspd -= air_deceleration;
		}
		if(sign(hspd) == 1 && hspd < air_deceleration){
			hspd = 0;
		}
		if(hspd <= -air_deceleration){
			hspd += air_deceleration;
		}
		if(sign(hspd) == -1 && hspd > -air_deceleration){
			hspd = 0;
		}
	}
}

else{
	//Decelerate - can't move on ground while casting
	
	if(hspd >= ground_deceleration){
		hspd -= ground_deceleration;
	}
	if(sign(hspd) == 1 && hspd < ground_deceleration){
		hspd = 0;
	}
	if(hspd <= -ground_deceleration){
		hspd += ground_deceleration;
	}
	if(sign(hspd) == -1 && hspd > -ground_deceleration){
		hspd = 0;
	}
}

//Horizontal
if(place_meeting(x+hspd, y, obj_Solid)){
	while(!place_meeting(x+ sign(hspd), y, obj_Solid)){
		x += sign(hspd);
	}
	hspd = 0;
}

x+= hspd;

//Vertical
if(place_meeting(x, y + vspd, obj_Solid)){
	while(!place_meeting(x,y + sign(vspd), obj_Solid)){
		y += sign(vspd);
	}
	
	with(instance_create_layer(x, bbox_bottom, "EffectsTop", obj_DustLand2)){
		image_xscale = other.image_xscale;
	}
	
	//play sound
	
	vspd = 0;
	
}

PlatformCollisions(false);
y += vspd;
