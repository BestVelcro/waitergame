


#macro viewplate view_camera[1]
camera_set_view_size(viewplate,view_width,view_height);

if(instance_exists(obj_plate)){
	var _x = clamp(obj_plate.x-view_width/2,0,room_width-view_width);
	var _y = clamp(obj_plate.y-view_height/2,0,room_height-view_height);
	
	var _cur_x = camera_get_view_x(viewplate);
	var _cur_y = camera_get_view_y(viewplate);
	
	var _spd =1;
	
		camera_set_view_pos(viewplate,
							lerp(_cur_x,_x,_spd),
							lerp(_cur_y,_y,_spd));
}

#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height);

if(instance_exists(obj_player)){
	var _x = clamp(obj_player.x-view_width/2,0,obj_background.sprite_width-view_width);
	var _y = clamp(obj_player.y-view_height/2,0,room_height-view_height);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd =0.05;
	
		camera_set_view_pos(view,
							lerp(_cur_x,_x,_spd),
							lerp(_cur_y,_y,_spd));
}