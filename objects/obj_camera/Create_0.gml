view_width = 640;
view_height = 480;

window_scale = 1.5;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);

view_camera[1] = camera_create();