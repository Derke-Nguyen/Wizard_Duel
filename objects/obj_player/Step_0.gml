key_right = keyboard_check(RIGHT_KEY);
key_left = -keyboard_check(LEFT_KEY);
key_jump = keyboard_check_pressed(JUMP_KEY); //inputs

move = key_left + key_right;
hsp = move*movespeed;
if(vsp < 10){
	vsp += grav;
} //using inputs

if(place_meeting(x, y + 1, obj_floor) || place_meeting(x, y + 1, obj_platform)){
	vsp = key_jump * -jumpspeed;
} //jumping

hcollide = instance_place(x + hsp, y, obj_platform){
	if(hcollide != noone){
		yplus = 0;
		while(place_meeting(x + hsp, y - yplus, obj_platform)){
			yplus += 1;
		}
		if(place_meeting(x + hsp, y - yplus, obj_platform)){
			while(!place_meeting(x + sign(hsp), y, obj_platform)){
				x += sign(hsp);
				hsp = 0;
			}
		}
		else{
			y -= 0.5*yplus;
		}
	}
} //horizontal collisions
// unsure how to fix: touching a platform instantly makes you go on top of it

vcollide = instance_place(x, y + vsp, obj_platform);
if(vcollide != noone){
	if(sign(vsp) == 1){
		if(!place_meeting(x, y, obj_platform)){
			while(!place_meeting(x, y + sign(vsp), obj_platform)){
				y += 1;
				vsp = 0;
			}
		}
	}
} //vertical collisions

x += hsp;
y += vsp;

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height); //keeps player in room