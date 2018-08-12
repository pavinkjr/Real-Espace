/// @description Mid Platform
if(collider_1_ == noone){
	collider_1_ = instance_create_layer(x, y,"Instances", o_solid);
	collider_1_.image_xscale = 10;
	collider_2_ = instance_create_layer(x + 640, y,"Instances", o_solid);
	collider_2_.image_xscale = 10;
	sprite_index = platform_[state_];
	collider_1_.moving_ = true;
	collider_2_.moving_ = true;
	collider_1_.drop_speed_ = drop_speed_;
	collider_2_.drop_speed_ = drop_speed_;
}

y += drop_speed_;
collider_1_.y += drop_speed_;
collider_2_.y += drop_speed_;
collider_1_.drop_speed_ = drop_speed_;
collider_2_.drop_speed_ = drop_speed_;