// Description: ScrResolution(display_width, display_height);

var _display_width = argument[0];
var _display_height = argument[1];

//set size of game window
window_set_size(_display_width, _display_height);

//set base resolution
var _base_width = 1920;
var _base_height = 1080;

//determine aspect ratio
var _aspect = _base_width / _base_height;

//adjusted height and width calculations
if(_display_width >= _display_height){
	var _height = min(_base_height, _display_height);
	var _width = (_height * _aspect);
}

//resize application surfaces
surface_resize(application_surface, _width, _height);

//set size of gui
display_set_gui_size(display_get_width(), display_get_height());