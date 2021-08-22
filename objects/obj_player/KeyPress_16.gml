foodowner = instance_nearest(x, y, obj_customer);
with(obj_block){
	if(owner == other.foodowner){
		instance_destroy(owner);
		instance_destroy();
	}
}