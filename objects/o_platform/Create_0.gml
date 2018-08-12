collider_1_ = noone;
collider_2_ = noone;
enum platforms {
	right,
	left,
	mid
}

moving_ = false;
drop_speed_ = global.drop_speed;
state_ = platforms.right;

platform_[platforms.right] = s_floor_right;
platform_[platforms.left] = s_floor_left;
platform_[platforms.mid] = s_floor_mid;

alarm[1] = global.one_second * 17;

