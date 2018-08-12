/// @description Right Platform
if(collider_1_ == noone){
	collider_1_ = instance_create_layer(x + 320, y,"Instances", o_solid);
	collider_1_.image_xscale = 20;
	sprite_index = platform_[state_];
	collider_1_.moving_ = true;
	collider_1_.drop_speed_ = drop_speed_;
}

y += drop_speed_;
collider_1_.y += drop_speed_;
collider_1_.drop_speed_ = drop_speed_;