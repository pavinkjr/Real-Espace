x_input_ = o_input.right_ - o_input.left_;
y_input_ = o_input.up_pressed_;
action_1_ = o_input.action_one_pressed_;
if(o_game.paused_){
	o_game.paused_ = false;
}
if(keyboard_check(vk_anykey) && !ready){
	exit;
}else{
	ready = true;	
}

if(global.power_stones >= 5 && !boots_message && !instance_exists(o_display_message)){
	boots_message = true;
	var _msg = instance_create_layer(0,0,"Instances",o_display_message);
	_msg.message_ = "You  have  enough  to  buy  Jump  Boots  From  the  shop!\n\n Visit  after  you  get  squisher'd!";
}

if(global.power_stones >= 10 && !blaster_message && !instance_exists(o_display_message)){
	blaster_message = true;
	var _msg = instance_create_layer(0,0,"Instances",o_display_message);
	_msg.message_ = "You  have  enough  to  buy  Blaster  From  the  shop!\n\n Visit  after  you  get  squisher'd!";
}

if(global.power_stones >= 20 && !resist_message && !instance_exists(o_display_message)){
	resist_message = true;
	var _msg = instance_create_layer(0,0,"Instances",o_display_message);
	_msg.message_ = "You  have  enough  to  buy  Heat  Resist  From  the  shop!\n\n Visit  after  you  get  squisher'd!";
}

event_user(state_);

if(place_meeting(x,y+1,collision_object_) && place_meeting(x, y-1, collision_object_)){
	instance_destroy();
}