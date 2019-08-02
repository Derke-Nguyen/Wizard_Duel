sprite_index = sPlayerWeakProjectile

if(weak_projectile_state_timer == 0) {
	image_index = 0;
	//audio_play_sound
	//audio_sound_pitch
	instance_create_layer(x,y, "PlayerSkillEffects", obj_SimpleProjectile);
}

//Animation
if(weak_projectile_state_timer >= weak_projectile_hitbox_state_frame){
	image_index = 1;
}
else{
	image_index = 0;
}

PlayerCastCommon();

if(weak_projectile_state_timer > weak_projectile_state_frames - buffered_input_frames){
	GetBufferedInput();
}

weak_projectile_state_timer++;