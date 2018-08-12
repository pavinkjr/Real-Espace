if room != r_game_room exit;
if paused_ {
	alarm[0] = 5 * global.one_second;
	exit;
}


var _rand_x = irandom_range(0,room_width - 64);
var _rand_y =irandom_range(0, room_height - 64);

var _blocker = instance_create_layer(_rand_x, _rand_y, "Instances", o_blocker);


with(_blocker){
	if(place_meeting(_blocker.x, _blocker.y, o_player)){
		alarm[0] = 1;
		instance_destroy(_blocker);
	}
	if(instance_exists(_blocker)){
		if(place_meeting(_blocker.x, _blocker.y, o_blocker)){
			alarm[0] = 1;
			instance_destroy(_blocker);
		}	
	}
	global.blocker_count += 1;
}

alarm[0] = 5 * global.one_second;