collider_1_ = noone;

if(collider_1_ == noone){
	collider_1_ = instance_create_layer(x, y,"Instances", o_solid);
	collider_1_.image_xscale = 10;
	collider_1_.moving_ = false;
	collider_1_.drop_speed_ = 0;
}