if(x != chair.x) hsp = sign(chair.x-x)*walksp;
if(x == chair.x) and (y != chair.y){
	vsp = sign(chair.y-y)*walksp;
	hsp = 0;
}
if(x == chair.x) and (y == chair.y) and (!pedido){
	pedido = true;
	hsp = 0;
	vsp = 0;
	sitting_chair = instance_nearest(x,y,obj_chair);
	sitting_chair.owner = id;
	food = instance_create_layer(x,y,"Instances",obj_food);
	food.x = irandom_range(obj_food_spawner.x-sprite_width/2,obj_food_spawner.x+sprite_width/2);
	food.y = irandom_range(obj_food_spawner.y-sprite_height/2,obj_food_spawner.y+sprite_height/2);
	with(food){
		owner = other.id;
		image_index = irandom(obj_food.image_number-1);
	}
	if(food_prompt == undefined){
		food_prompt = promptControl(id,x,y-sprite_height);
		food_prompt.image_index = food.image_index;
	}
	// irandom(obj_food.image_number-1);
}
if(served) and (y != obj_spawner.y){
	if(instance_exists(food_prompt)) instance_destroy(food_prompt);
	vsp = sign(obj_spawner.y-y)*walksp;
	y = y+vsp;
}
if(served) and (y == obj_spawner.y){
	hsp = sign(obj_spawner.x-x)*walksp;
	vsp = 0;
	x = x+hsp;
}

if(served) and (place_meeting(x,y,obj_spawner)) instance_destroy()

if(!pedido){
x = x+hsp;
y = y+vsp;
}
depth =-y;