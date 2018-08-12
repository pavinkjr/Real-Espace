///@arg file_name
var _file_name = argument0;
ini_open(_file_name);

var _temp = "";

//JUMP BOOTS
if(global.jump_boots){
	_temp = "true";
}else{
	_temp = "false";	
}
ini_write_string("Player", "Jump_Boots", _temp);

//BLASTER
if(global.blaster){
	_temp = "true";
}else{
	_temp = "false";	
}
ini_write_string("Player", "Blaster", _temp);

//HEAT RESIST 
if(global.heat_resist){
	_temp = "true";
}else{
	_temp = "false";	
}
ini_write_string("Player", "Heat_Resist", _temp);

ini_write_real("Player", "Stones", global.power_stones);

ini_close();
