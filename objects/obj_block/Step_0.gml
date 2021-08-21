//gambiarra pra forçar a física a ser calculada o tempo todo
if(place_meeting(x,y+sprite_height+1, obj_plate)){
	phy_position_y += gravity;
}
// calcula a distancia do objeto pro meio do prato
var distance_middleplate = id.x-obj_plate.x;
// objeto aplica força no prato de acordo com seu peso e distancia do meio do prato
if(sign(distance_middleplate) == 1 && id.x < obj_plate.x+(obj_plate.sprite_height/2) && obj_point.x < obj_bar.x+obj_bar.sprite_width){
obj_point.offset += ((global.max_objectweight*distance_middleplate)/(obj_plate.x+(obj_plate.sprite_width/2)))/peso;
}
if(sign(distance_middleplate) == -1 && id.x > obj_plate.x-(obj_plate.sprite_height/2) && obj_point.x > obj_bar.x-obj_bar.sprite_width){
obj_point.offset += ((global.max_objectweight*distance_middleplate)/(obj_plate.x+(obj_plate.sprite_width/2)))/peso;
}