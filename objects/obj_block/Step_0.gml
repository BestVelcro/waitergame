if(place_meeting(x,y+sprite_height+1, obj_plate)){
	phy_position_y += gravity;
}
var distance_middleplate = id.x-obj_plate.x;
obj_point.final_force += ((global.max_objectweight*distance_middleplate)/(obj_plate.x+(obj_plate.sprite_width/2)))/peso;