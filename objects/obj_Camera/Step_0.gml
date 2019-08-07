/// @description Insert description here
// You can write your code in this editor

// CAMERA SHAKE
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera,vm);

for (var i = 0; i < ds_list_size(shake_list); i++) {
	var _current_shake = shake_list[|i];
	shake += _current_shake[0];
	
	_current_shake[1]--;
	if (_current_shake[1] <= 0) {
		ds_list_delete(shake_list, i);
	} else {
		ds_list_replace(shake_list, i, _current_shake);
	}
}

if (shake > 0) {
	var ran_x = irandom_range(-shake, shake);
	var ran_y = irandom_range(-shake, shake);
	x += ran_x;
	y += ran_y;
}

//reset
if(shake == 0){
	x = focusX;
	y = focusY;
}

shake = 0;