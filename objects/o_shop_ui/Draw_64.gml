var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();
draw_text_transformed(_gui_height/3, _gui_height/32, "Element  Stones:  " + string(global.power_stones),_gui_height/480,_gui_height/480,0);



for( var _i = 0; _i < options_length_; _i++){
	var _item = options_[_i];
	if _i == index_ {
		draw_set_color(menu_color_);
		if(_item[3]){
			draw_set_color(menu_owned_color_);	
		}
	} else {
		draw_set_color(menu_dark_color_);
		if(_item[3]){
			draw_set_color(menu_owned_color_dark_);	
		}
	}
	draw_set_halign(fa_center);
	draw_text_transformed(_gui_height/6, _gui_height/9.6 + _i*_gui_height/6 , _item[0],_gui_height/320,_gui_height/320,0);
	draw_text_transformed(_gui_height/6, _gui_height/6 + _i*_gui_height/6 , string(_item[2]),_gui_height/320,_gui_height/320,0);
	draw_set_halign(fa_left);
	draw_text_transformed(_gui_height/3, _gui_height/9.6 + _i*_gui_height/6 , _item[1],_gui_height/320,_gui_height/320,0);
}


draw_set_color(c_white);
draw_set_halign(fa_left);
