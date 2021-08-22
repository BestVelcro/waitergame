if(x != chair.x) hsp = sign(chair.x-x)*walksp;
if(x == chair.x) and (y != chair.y){
	vsp = sign(chair.y-y)*walksp;
	hsp = 0;
}
if(x == chair.x) and (y == chair.y) and (!pedido){
	hsp = 0;
	vsp = 0;
	pedido = true;
	food = instance_create_layer(x,y,"Instances",obj_food);
	food.x = irandom_range(obj_food_spawner.x-sprite_width/2,obj_food_spawner.x+sprite_width/2);
	food.y = irandom_range(obj_food_spawner.y-sprite_height/2,obj_food_spawner.y+sprite_height/2);
	with(food){
		owner = other.id;
		image_index = irandom(obj_food.image_number-1);
	}
	// irandom(obj_food.image_number-1);
}

if(!pedido){
x = x+hsp;
y = y+vsp;
}
depth =-y;