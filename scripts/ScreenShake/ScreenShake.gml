/// @description ScreenShake() - adds a screenshake to the buffer

var _new_shake;
_new_shake[0] = argument[0]; //magnitude
_new_shake[1] = argument[1]; //time
ds_list_add(obj_Camera.shake_list, _new_shake);