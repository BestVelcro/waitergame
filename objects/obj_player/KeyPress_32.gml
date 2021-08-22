var _getfood = instance_nearest(x, y, obj_food);
_platefood = instance_create_layer(obj_plate.x,obj_plate.y-obj_camera.view_height,"BalancePlate",obj_block);
_platefood.owner = _getfood.owner;

instance_destroy(_getfood, instance_number(obj_chair) - 1);