

if(x_speed_ == 0 && y_speed_ == 0){
	exit;	
}

if(place_meeting(x + x_speed_, y, collision_object_)){
	while(!place_meeting(x + sign(x_speed_) ,y,collision_object_)){
		x += sign(x_speed_);	
	}
	x_speed_ = 0;
}

x += x_speed_;

var _collision = instance_place(x,y + y_speed_, collision_object_);
if(_collision != noone){
		while(!place_meeting(x,y + sign(y_speed_), collision_object_)){
			y += sign(y_speed_);
		}
		if(_collision.moving_){
			y += _collision.drop_speed_;	
		}
		
		while(place_meeting(x,y,o_blocker)){
			y -= 1;	
		}
	y_speed_ = 0;
}

y += y_speed_;
