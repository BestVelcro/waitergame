if(x != chair.x) hsp = sign(chair.x-x)*walksp;
if(x == chair.x) and (y != chair.y){
	vsp = sign(chair.y-y)*walksp;
	hsp = 0;
}
if(x == chair.x) and (y == chair.y) and (!pedido){
	time = maxtime;
	pedido = true;
	hsp = 0;
	vsp = 0;
	dontdraw = false;
	sitting_chair = instance_nearest(x,y,obj_chair);
	sitting_chair.owner = id;
	food = instance_create_layer(x,y,"Instances",obj_food);
	food.x = irandom_range(obj_food_spawner.x-obj_food_spawner.sprite_width,obj_food_spawner.x+obj_food_spawner.sprite_width);
	food.y = irandom_range(obj_food_spawner.y-obj_food_spawner.sprite_height,obj_food_spawner.y+obj_food_spawner.sprite_height);
	with(food){
		owner = other.id;
		image_index = irandom(obj_food.image_number-1);
	}
	if(food_prompt == undefined){
		food_prompt = promptControl(id,x-obj_food.sprite_width/2,y-sprite_height);
		food_prompt.image_index = food.image_index;
	}
	// irandom(obj_food.image_number-1);
}

if(!dontdraw) && (!pacience){
	alarm[0]=room_speed;
	pacience = true;
}

if(!dontdraw) && (time <= 0){
	global.money -= 20;
	served = true;
	dontdraw = true;
	if(instance_exists(obj_food)){
		with(obj_food){
			if(owner == other.id) instance_destroy();
		}
	}
		if(instance_exists(obj_block)){
		with(obj_block){
			if(owner == other.id) fell = false; instance_destroy();
		}
	}
}

if(served) and (y != obj_spawner.y){
	dontdraw = true;
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