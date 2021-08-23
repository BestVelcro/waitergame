// Recebendo comida
if(place_meeting(x-sprite_width/2,y-sprite_height/2,obj_balcony)){
if(instance_exists(obj_food)){
var _getfood = instance_nearest(x, y, obj_food);
if(_getfood.image_index == 0) food_object = obj_block;
if(_getfood.image_index == 1) food_object = obj_tomate;
if(_getfood.image_index == 2) food_object = obj_vinho;
if(_getfood.image_index == 3) food_object = obj_sorvete;

_platefood = instance_create_layer(obj_plate.x,obj_plate.y-obj_camera.view_height,"BalancePlate",food_object);
with(_platefood){
phy_position_x = clamp(irandom_range(obj_plate.phy_position_x-obj_plate.sprite_height,obj_plate.phy_position_x+obj_plate.sprite_height),obj_plate.phy_position_x-obj_plate.sprite_height/2+sprite_width/2,obj_plate.phy_position_x+obj_plate.sprite_height/2-sprite_width/2)
}
_platefood.owner = _getfood.owner;
instance_destroy(_getfood, instance_number(obj_chair) - 1);
}
}

// Entregando comida
if(place_meeting(x,y-sprite_height/2,obj_table) or place_meeting(x,y+sprite_height/2,obj_table)){
chairowner = instance_nearest(x, y, obj_chair);
foodowner = chairowner.owner;
with(food_object){
	if(owner == other.foodowner){
		global.money += 15;
		fell = false;
		with(owner){served = true;}
		instance_destroy();
	}
}
}