if(room == r_game_room){
	alarm[0] = 2 * global.one_second;
	global.blocker_count = 0;
	global.drop_speed = 1;
	global.power_cores = 0;
	global.score_ = 0;
	audio_play_sound(space_theme ,6, true);
}