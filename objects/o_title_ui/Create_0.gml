enum options {
	start_game,
	shop,
	options,
	quit
};

ready = false;

menu_color_ = c_white;
menu_dark_color_ = c_gray;

options_[options.start_game] = "Start  Game";
options_[options.shop] = "Shop";
options_[options.options] = "Options";
// options_[options.quit] = "Quit";

options_length_ = array_length_1d(options_);

index_ = options.start_game;
