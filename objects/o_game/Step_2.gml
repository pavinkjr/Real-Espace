if( keyboard_check_pressed(vk_escape)){
	if(room == r_shop){
		ini_save(working_directory + "\real_espace.ini");
		room_goto(r_title);
	}
	
	if(room == r_options){
		room_goto(r_title);
	}
	
}

if o_input.paused_pressed_ && (room == r_game_room){
	if paused_	{
		paused_ = false;
		if sprite_exists(paused_sprite_) {
			sprite_delete(paused_sprite_);
		}
		instance_destroy(pause_menu_);
		pause_menu_ = noone;
		audio_resume_sound(space_theme);
		instance_activate_all();
		audio_play_sound(blip_1, 2, false);
	} else {
		paused_ = true;	
		paused_sprite_ = sprite_create_from_surface(application_surface, 0,0,
		view_wport[0], view_hport[0], false, false, 0 , 0);
		audio_pause_sound(space_theme);
		audio_play_sound(blip_1, 2, false);
		instance_deactivate_all(true);
		instance_activate_object(o_input);
		pause_menu_ = instance_create_layer(0,0,"Instances",o_options_ui);
	}
}



