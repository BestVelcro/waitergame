barpoint_distance = obj_point.x-id.x;
with(obj_plate){
	phy_rotation = -(90 - (obj_bar.barpoint_distance/((obj_bar.sprite_width/2)/global.max_angle)));
}