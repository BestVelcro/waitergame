
if(keyboard_check(vk_left) && x > obj_bar.x-obj_bar.sprite_width/2){
	x -= 5;
}
if(keyboard_check(vk_right) && x < obj_bar.x+obj_bar.sprite_width/2){
	x += 5;
}