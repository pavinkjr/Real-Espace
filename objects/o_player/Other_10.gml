/// @description Run State
if x_input_ == 0 {
	x_speed_ = 0;
	image_speed = 0;
	image_index = 0;
	sprite_index = s_player_astronaut_idle;
} else {
	x_speed_ = x_input_ * speed_;
	image_xscale = x_input_;
	image_speed = 1;
	sprite_index = player_sprite[player.run];
}

if action_1_ &&  global.power_cores >= 5 && global.blaster{
	y_speed_ = 0;
	state_ = player.attack;
	sprite_index = player_sprite[state_];
	image_index = 0;
	global.power_cores = 0;
}

if y_input_ {
	audio_play_sound(jump_1,6, false);
	y_speed_ = -jump_speed_;
	show_debug_message("Switch to air state");
	sprite_index =  player_sprite[player.air];
	state_ = player.air;
	image_speed = 0;
	image_index = 0;
}

y_speed_ += gravity_;
move_entity();
