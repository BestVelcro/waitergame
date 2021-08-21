// Define a seta sendo apertada (direita = 1 esquerda = -1)
var dir = keyboard_check(vk_right) - keyboard_check(vk_left);
// caso o jogador não esteja apertando nenhuma tecla (0) nenhuma força é aplicada
if (dir == 0) {
    player_force = 0;
}else {
	//caso contrário, acelere o jogador a direção sendo pressionada
    player_force = clamp(player_force + dir * 0.5, -player_maxforce, player_maxforce);
}
// força do jogador é aplicado ao calculo final de força, e afeta o offset (distancia do slider do meio da barra)
offset = clamp(offset + player_force, -obj_bar.sprite_width / 2, obj_bar.sprite_width / 2);

x = obj_bar.x + offset;