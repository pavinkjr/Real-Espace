if(keyboard_check(vk_anykey) && !ready){
	exit;
}else{
	ready = true;	
}

var _last_index = index_ ;
if o_input.up_pressed_ {
	index_ = max(--index_, 0);
	audio_play_sound(blip_2,6, false);
}

if o_input.down_pressed_ {
	index_ = min(++index_, options_length_ -1 );
	audio_play_sound(blip_2,6, false);
}

if o_input.action_one_pressed_ {
	switch (index_) {
		case options.start_game:
		room_goto(r_game_room);
		audio_play_sound(blip_1,6, false);
		break;
		case options.shop:
		show_debug_message("Shop");
		audio_play_sound(blip_1,6, false);
		room_goto(r_shop);
		break;
		case options.options:
		room_goto(r_options);
		audio_play_sound(blip_1,6, false);
		break;
		case options.quit:
		//game_end();
		break;
		default:
		break;
	}
}

