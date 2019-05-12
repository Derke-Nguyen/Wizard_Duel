var SPRITE_V_CENTER = y + sprite_height / 2;
var SPRITE_LEFT = x;
var SPRITE_RIGHT = x + sprite_width;
if(mana >= 1){
    // Facing left
	if(move <= 0){
		with (instance_create_depth(SPRITE_LEFT, SPRITE_V_CENTER, 0, obj_bullet2)){
			direction = 180;
			originalPlayer = 2;
		}
		mana--;
	}
    // Facing right
	else{
		with (instance_create_depth(SPRITE_RIGHT, SPRITE_V_CENTER, 0, obj_bullet2)){
			direction = 0;
			originalPlayer = 2;
		}
		mana--;
	}
} //shoots small bullet if mana is available
