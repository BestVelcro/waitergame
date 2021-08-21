
if(keyboard_check(vk_left) && player_force > -player_maxforce){
	player_force -= 0.5;
}
if(keyboard_check(vk_right) && player_force < player_maxforce){
	player_force += 0.5;
}
if(!keyboard_check(vk_right) && !keyboard_check(vk_left)){
	player_force = 0;
}
final_force += player_force;
x = obj_bar.x+final_force;