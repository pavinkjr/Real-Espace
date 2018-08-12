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

if o_input.right_pressed_ {
	switch(index_){
		case game_options.volume:
			if(global.volume < 100){
				global.volume = min(100, global.volume+5);
				audio_master_gain(global.volume/100);
			}
		break;
		default:
		break;
	}
	audio_play_sound(blip_2,6, false);
}

if o_input.left_pressed_ {
	switch(index_){
		case game_options.volume:
			if(global.volume > 0){
				global.volume = max(0, global.volume-5);
				audio_master_gain(global.volume/100);
			}
		break;
		default:
		break;
	}
	audio_play_sound(blip_2,6, false);
}

if o_input.action_one_pressed_ {
	switch (index_) {
		case game_options.volume:
			audio_play_sound(blip_1,6, false);
		break;
		case game_options.back:
			audio_play_sound(blip_1,6, false);
		room_goto(r_title);
		break;
		default:
		break;
	}
}

