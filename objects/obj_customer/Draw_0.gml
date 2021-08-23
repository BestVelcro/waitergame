draw_self();
if(!dontdraw){
	draw_set_color(c_black);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
draw_text(x+string_width(string(time)),y-sprite_height,string(time));
}