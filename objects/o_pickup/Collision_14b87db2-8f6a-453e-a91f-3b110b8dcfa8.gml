global.power_cores += 1;
if(global.power_cores > 5){
	global.power_cores = 5;	
}
global.score_ += (1 * global.blocker_count);
audio_play_sound(pickup_1,5,false);
instance_destroy();