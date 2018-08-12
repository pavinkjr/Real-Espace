/// @description Air State
var _collision = instance_place(x, y + 1, collision_object_);
if _collision != noone {
	audio_play_sound(dirt_1,4,false);
	state_ = player.run;
	show_debug_message("Switch to run state");
	sprite_index = s_player_astronaut_idle;
	image_speed = 0;
	image_index = 0;
	double_jump_ = true;
	move_entity();
	exit;
}

if action_1_ && global.power_cores >= 5 && global.blaster{
	y_speed_ = 0;
	state_ = player.attack;
	sprite_index = player_sprite[state_];
	image_index = 0;
	global.power_cores = 0;
}

if x_input_ == 0 {
	x_speed_ = 0;
} else {
	x_speed_ = x_input_ * speed_;
	image_xscale = x_input_;
}

if y_input_ && double_jump_ && global.jump_boots{
	audio_play_sound(jump_2,6, false);
	y_speed_ = -jump_speed_;
	double_jump_ = false;
}

y_speed_ += gravity_;
move_entity();
