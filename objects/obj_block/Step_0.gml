//gambiarra pra forçar a física a ser calculada o tempo todo
if(place_meeting(x,y+sprite_height+1, obj_plate)){
	phy_position_y += gravity;
}
// calcula a distancia do objeto pro meio do prato
var distance_middleplate = id.x-obj_plate.x;
// objeto aplica força no prato de acordo com seu peso e distancia do meio do prato
obj_point.final_force += ((global.max_objectweight*distance_middleplate)/(obj_plate.x+(obj_plate.sprite_width/2)))/peso;