/// @description Drop Platform

var _platform = instance_create_layer(0,-32,"Instances", o_platform);
_platform.drop_speed_ = global.drop_speed;
_platform.state_ = irandom_range(0,2);
_platform.moving_ = true;

alarm[0] = drop_time_;