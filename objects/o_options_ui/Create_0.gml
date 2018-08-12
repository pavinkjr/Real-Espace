enum game_options {
	volume,
	back
};

ready = false;

menu_color_ = c_white;
menu_dark_color_ = c_gray;

options_[game_options.volume] = "Volume: ";
options_[game_options.back] = "Main Menu";

options_length_ = array_length_1d(options_);

index_ = game_options.volume;
