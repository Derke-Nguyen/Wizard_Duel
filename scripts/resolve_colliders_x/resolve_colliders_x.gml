/// resolve_colliders_x(sprite, hsp, colliders_list)
//	Resolves the y axis collision with the colliders.
//  Note that the origin of the sprite is assumed to be the center of the sprite
//  and the origin of the collider is assumed to be the top left of the collider.
//  Also assumes that the sprite_width of the collider is equal to the actual size of the mask
//  If you draw the sprite using draw_ext or modify image_xscale this might not be true.
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

// Note that this assumes that sprite.sprite_width is actually the width of the
// sprite's collision mask. This might not be true if sprite.image_xscale isn't
// 1 or -1 (because sprite_width is influcenced by that value) or if we use draw_ext
// to draw sprites manually.
var mask_width = abs(sprite.sprite_width);

for (var i = 0; i < ds_list_size(colliders_list); i++) {
	var collider = colliders_list[| i];
	if place_meeting(sprite.x, sprite.y + x_disp, collider) {
		if hsp > 0 {
            // Sprite is moving to the right, so push it out to the left
			var collider_left = collider.x;
			var sprite_right = sprite.x + mask_width / 2.0;
			x_disp += collider_left - sprite_right - COLLISION_TOLERANCE;
		} else {
            // Sprite is moving to the left, so push it out to the right
			var collider_width = abs(collider.sprite_width);
			var collider_right = collider.x + collider_width;
			var sprite_left = sprite.x - mask_width / 2.0;
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