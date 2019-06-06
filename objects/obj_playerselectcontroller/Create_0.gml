/// @description Insert description here
// You can write your code in this editor
delay = 20;
image_alpha = 0.5;
numofplayers = 0;

if(gl_numberofcharacters <4){
	instance_destroy(obj_characterselect_p4);
}

if(gl_numberofcharacters < 3){
	instance_destroy(obj_characterselect_p3);
}