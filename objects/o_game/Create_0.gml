global.one_second = game_get_speed(gamespeed_fps);
global.blocker_count = 0;
global.drop_speed = 1;
global.power_cores = 0;
global.score_ = 0;
global.power_stones = 0;

global.jump_boots = false;
global.blaster  = false;
global.heat_resist = false;

global.volume = 20;
audio_master_gain(global.volume/100);

paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale = display_get_gui_width()/view_wport[0];
pause_menu_ = noone;

var _font_string =  "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+ \n";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(global.font);
randomize();
