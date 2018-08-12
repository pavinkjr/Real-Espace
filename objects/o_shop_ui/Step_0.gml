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
	var _item = options_[index_];
	audio_play_sound(blip_1,6, false);
	switch (index_) {
		case shop.jump_boots:
		show_debug_message("Jump  Boots");
		if(global.power_stones >= _item[2] && !global.jump_boots){
			global.power_stones -= _item[2];
			global.jump_boots = true;
			_item[3] = true;
			options_[shop.jump_boots] = _item;
		}
		break;
		case shop.blaster:
		show_debug_message("Blaster");
		if(global.power_stones >= _item[2] && !global.blaster){
			global.power_stones -= _item[2];
			global.blaster = true;
			_item[3] = true;
			options_[shop.blaster] = _item;
		}
		break;
		case shop.heat_resistance:
		show_debug_message("Heat  Resist");
		if(global.power_stones >= _item[2] && !global.heat_resist){
			global.power_stones -= _item[2];
			global.heat_resist = true;
			_item[3] = true;
			options_[shop.heat_resistance] = _item;
		}
		break;
		default:
		break;
	}
}