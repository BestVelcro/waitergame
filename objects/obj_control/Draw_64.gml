if surface_exists(surf){
	var _camerawidth = display_get_gui_width()-display_get_gui_width()/4;
	var _cameraheight = display_get_gui_height()-display_get_gui_height()/4;
	draw_surface_stretched(surf,_camerawidth,_cameraheight,display_get_gui_width()/4,display_get_gui_height()/4);
}