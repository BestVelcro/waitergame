// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function promptControl(_object,_x,_y){
	if(instance_exists(_object)){
			prompt = instance_create_layer(_x,_y,"Instances",obj_prompt);
			return prompt;
	}
}