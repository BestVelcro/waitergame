if(instance_number(obj_customer) < instance_number(obj_chair)){
	instance_create_layer(obj_spawner.x,obj_spawner.y,"Instances",obj_customer);
}
alarm[0] = room_speed*irandom_range(1,3);