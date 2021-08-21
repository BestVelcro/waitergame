// Quando o jogador usar as setas (esquerda ou direita) ele vai aplicar uma força no prato, aumentando a força quanto mais ele segura o botão
if(keyboard_check(vk_left) && player_force > -player_maxforce){
	player_force -= 0.5;
}
if(keyboard_check(vk_right) && player_force < player_maxforce){
	player_force += 0.5;
}
// Caso o jogador solte as setas a força volta pra 0 na hora
if(!keyboard_check(vk_right) && !keyboard_check(vk_left)){
	player_force = 0;
}
// a força do jogador é aplicada no final do calculo e a barra move de acordo com o resultado
final_force += player_force;
x = obj_bar.x+final_force;