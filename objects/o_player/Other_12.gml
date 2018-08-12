y_speed_ = 0;
x_speed_ = -image_xscale * 4;


image_speed = .5;

if animation_hit_frame(image_number - 2){
	var _hit = instance_create_layer(x,y-32,"Instances",o_hitbox);
	_hit.image_xscale = image_xscale;
	_hit.alarm[0] = 3;
	audio_play_sound(shoot_1,6, false);
}

if animation_hit_frame(image_number - 1) {
	
	state_ = player.air;
	sprite_index = player_sprite[state_];	
}

y_speed_ += gravity_;
move_entity();