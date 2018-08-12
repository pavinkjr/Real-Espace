enum shop {
	jump_boots,
	blaster,
	heat_resistance
};

ready = false;

menu_color_ = c_white;
menu_dark_color_ = c_gray;
menu_owned_color_ = c_lime;
menu_owned_color_dark_ = c_green;

options_[shop.jump_boots] = create_item("Jump  Boots", "These  boots let  you jump twice!", 5,global.jump_boots);
options_[shop.blaster] = create_item("Blaster", "This  blaster  lets  you  destroy \nblocks  when  you  collect \n5  power  cores.  press E  to  use.", 10, global.blaster);
options_[shop.heat_resistance] = create_item("Heat  Resist", "This  power  lets  you  walk\non  the  sun!", 20, global.heat_resist);

options_length_ = array_length_1d(options_);

index_ = shop.jump_boots;
