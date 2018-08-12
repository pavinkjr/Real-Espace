enum end_screen {
	restart,
	shop,
	quit
};

menu_color_ = c_white;
menu_dark_color_ = c_gray;

options_[end_screen.restart] = "Restart";
options_[end_screen.shop] = "Shop";
options_[end_screen.quit] = "Main Menu";

options_length_ = array_length_1d(options_);

index_ = end_screen.restart;
