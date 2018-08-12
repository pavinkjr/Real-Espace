if(room != r_game_room){exit;}
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

draw_text_ext_transformed(10,8,"Score: " + string(global.score_),12,100,_gui_height/480,_gui_height/480,0);
draw_text_ext_transformed(10,_gui_height - 40,"Power Cores: " + string(global.power_cores),12,200,_gui_height/480,_gui_height/480,0);