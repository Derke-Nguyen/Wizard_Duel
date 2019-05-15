/// resolve_colliders(sprite, vsp, colliders_list)
//	Resolves the y axis collision with the colliders.
//  Note that the origin of the sprite is assumed to be the center of the sprite
//  and the origin of the collider is assumed to be the top left of the collider.
//  Also assumes that the sprite_height of the collider is equal to the actual size of the mask
//  If you draw the sprite using draw_ext or modify image_yscale this might not be true.
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

// Note that this assumes that sprite.sprite_height is actually the height of the
// sprite's collision mask. This might not be true if sprite.image_yscale isn't
// 1 or -1 (because sprite_height is influcenced by that value) or if we use draw_ext
// to draw sprites manually.
var mask_height = abs(sprite.sprite_height);

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
			var collider_height = abs(collider.sprite_height);
            // var collider_height = collider.bbox_bottom - collider.bbox_top;
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