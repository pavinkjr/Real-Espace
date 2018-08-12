draw_set_halign(fa_center);
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

draw_text(_gui_width/2, _gui_height/2, "WS - to  navigate  menu\n\nE - to select\n\n" + 
"Enter - to return\paused\n\n F11 - Fullscreen  the  browser");

draw_sprite(s_title_text,0,_gui_width/2, _gui_height/3);

for( var _i = 0; _i < options_length_; _i++){
	if _i == index_ {
		draw_set_color(menu_color_);	
	} else {
		draw_set_color(menu_dark_color_);
	}
	draw_text_transformed(_gui_width/2, (_gui_height/1.5) + _i*36 , options_[_i],3,3,0);
}

draw_set_color(c_white);
draw_set_halign(fa_left);
