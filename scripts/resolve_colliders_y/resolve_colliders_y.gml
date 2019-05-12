/// resolve_colliders(sprite, vsp, colliders_list)
//	Resolves the y axis collision with the colliders.
//  Note that the origin of the sprite is assumed to be the center of the sprite
//  and the origin of the collider is assumed to be the top left of the collider.
//		sprite		- The sprite to resolve. Uses the bounding box of the sprite
//		vsp			- Vertical speed of the sprite
//		colliders_list  - The walls the sprite is touching
//  Returns an array where
//		index 0 - sprite's new y position
//		index 1 - sprite's new y velocity
var sprite = argument0;
var y_disp = 0;
var vsp = argument1;
var colliders_list = argument2;

// How far to place the sprite from the wall
// Needed to avoid roundoff errors
var COLLISION_TOLERANCE = 1;

// Note that all the bbox_ variables are ints, so we can't use them directly
// to get position, (.x and .y are real numbers!). Fortunately, masks dimension are
// always in pixels, so they should be ints.
var mask_height = sprite.bbox_bottom - sprite.bbox_top;

for (var i = 0; i < ds_list_size(colliders_list); i++) {
	var collider = colliders_list[| i];
	if place_meeting(sprite.x, sprite.y + y_disp, collider) {
		if vsp > 0 {
            // We are move **DOWN** so push the sprite up.
			var collider_top = collider.y;
			var sprite_bottom = sprite.y + mask_height / 2.0;
			y_disp += collider_top - sprite_bottom - COLLISION_TOLERANCE;
		} else {
            // We are moving up, so push the sprite down.
			var collider_height = collider.bbox_bottom - collider.bbox_top;
			var collider_bottom = collider.y + collider_height;
			var sprite_top = sprite.y - mask_height / 2.0;
			y_disp += collider_bottom - sprite_top + COLLISION_TOLERANCE;
		}
		vsp = 0.0;
	}
}

var return_array;
return_array[0] = y_disp;
return_array[1] = vsp;
return return_array;