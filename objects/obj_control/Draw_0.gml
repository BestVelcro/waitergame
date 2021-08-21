if !surface_exists(surf){
	surf = surface_create(camera_get_view_width(view_camera[1]), camera_get_view_height(view_camera[1]));
	view_surface_id[1] = surf;
}