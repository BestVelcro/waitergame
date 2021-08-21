var dir = keyboard_check(vk_right) - keyboard_check(vk_left);
if (dir == 0) {
    player_force = 0;
}else {
    player_force = clamp(player_force + dir * 0.5, -player_maxforce, player_maxforce);
}
final_force = clamp(final_force + player_force, -obj_bar.sprite_width / 2, obj_bar.sprite_width / 2);
x = obj_bar.x + final_force;