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
	audio_stop_sound(space_theme);
	switch (index_) {
		case end_screen.restart:
		room_restart();
		audio_play_sound(blip_1,6, false);
		// audio_play_sound(song_1 ,6, true);
		break;
		case end_screen.shop:
		room_goto(r_shop);
		audio_play_sound(blip_1,6, false);
		break;
		case end_screen.quit:
		room_goto(r_title);
		audio_play_sound(blip_1,6, false);
		break;
		default:
		break;
	}
}

