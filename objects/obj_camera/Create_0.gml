view_width = 480;
view_height = 360;
cwidth = view_width;
cheight = view_height;
while(cwidth < display_get_width() or cheight < display_get_height()){
cwidth += cwidth;
cheight += cheight;
}
window_scale = (cheight/view_height)/2;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);

view_camera[1] = camera_create();