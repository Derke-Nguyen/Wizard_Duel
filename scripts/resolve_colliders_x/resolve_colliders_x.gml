/// resolve_colliders_x(sprite, hsp, colliders_list)
//	Resolves the x axis collision with the colliders. ASSUMES ORIGIN IS TOP LEFT OF SPRITE.
//		sprite		- The sprite to resolve. Uses the bounding box of the sprite
//		hsp			- Horizontal speed of the sprite
//		colliders_list  - The walls the sprite is touching
//  Returns an array where
//		index 0 - sprite's new x position
//		index 1 - sprite's new x velocity
var sprite = argument0;
var x_disp = 0; // The amount to displace x by to resolve the wall collision.
var hsp = argument1;
var colliders_list = argument2;

// How far to place the sprite from the wall
// Needed to avoid weird roundoff error
var COLLISION_TOLERANCE = 1;

for (var i = 0; i < ds_list_size(colliders_list); i++) {
	var collider = colliders_list[| i];
	if place_meeting(sprite.x, sprite.y + x_disp, collider) {
		if hsp > 0 {
            // Sprite is moving to the right, so push it out to the left
			var collider_left = collider.x;
            // Note that all the bbox_ variables are ints, so we can't use them directly
            // to get position, (.x and .y are real numbers!). Fortunately, masks dimension are
            // always in pixels, so they should be ints.
			var mask_width = sprite.bbox_right - sprite.bbox_left;
			var sprite_right = sprite.x + mask_width;
			x_disp += collider_left - sprite_right - COLLISION_TOLERANCE;
		} else {
            // Sprite is moving to the left, so push it out to the right
			var collider_width = collider.bbox_right - collider.bbox_left;
			var collider_right = collider.x + collider_width;
			var sprite_left = sprite.x;
			x_disp += collider_right - sprite_left + COLLISION_TOLERANCE;
		}
        // We hit a wall, so reset our hsp to zero.
		hsp = 0.0;
	}
}

var return_array;
return_array[0] = x_disp;
return_array[1] = hsp;
return return_array;