/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_tab)){
	switch(resolution){
		case "480p": 
			resolution = "720p";
			break;
		case "720p":
			resolution = "1080p";
			break;
		case "1080p":
			resolution = "480p";
			break;
	}
}

var _width;
var _height;
switch (resolution) {		
	case "480p":
		_width = 1280;
		_height = 720;
		resolution_number_index = 1;
		break;
			
	case "720p":
		_width = 1920;
		_height = 1080;
		resolution_number_index = 2;
		break;
			
	case "1080p":
		_width = 640;
		_height = 480;
		resolution_number_index = 0;
		break;
}
ScrResolution(_width, _height);