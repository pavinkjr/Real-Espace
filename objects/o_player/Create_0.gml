image_speed = 1;
movement_entity_init(o_solid);
enum player{
	run,
	air,
	attack
}

boots_message = global.jump_boots;
blaster_message = global.blaster;
resist_message = global.heat_resist;

ready = false;

starting_state_ = player.run;
state_ = starting_state_;
double_jump_ = true;
jump_speed_ = 20;

player_sprite[player.run] = s_player_astronaut_run;
player_sprite[player.air] = s_player_astronaut_air;
player_sprite[player.attack] = s_player_astronuat_attack;
