drop_time_ = global.one_second * 3;
drop_speed_ = global.drop_speed;

alarm[0] = 1;
alarm[1] = random_range(2, drop_time_ * 4);
alarm[2] = random_range(2, drop_time_ * 6);