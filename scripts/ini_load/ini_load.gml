///@arg file_name
var _file_name = argument0;

// global.load = true;
ini_open(_file_name);

//JUMP BOOTS
var temp_ = ini_read_string("Player", "Jump_Boots", "false");
if(temp_ == "true"){
	global.jump_boots = true;	
}else{
	global.jump_boots = false;	
}

//BLASTER
temp_ = ini_read_string("Player", "Blaster", "false");
if(temp_ == "true"){
	global.blaster = true;	
}else{
	global.blaster = false;	
}

//HEAT RESIST
temp_ = ini_read_string("Player", "Heat_Resist", "false");
if(temp_ == "true"){
	global.heat_resist = true;	
}else{
	global.heat_resist = false;	
}

global.power_stones = ini_read_real("Player", "Stones", 0);

ini_close();
