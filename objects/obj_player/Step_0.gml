var bbox_side;

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

var movesides = key_right-key_left;
var movevertical = key_down-key_up;

hsp = movesides * walksp;
obj_point.offset += movesides*-1;
vsp = movevertical * walksp;

// Horizontal Collision
if(hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if(tilemap_get_at_pixel(collisionMap,bbox_side+hsp,bbox_top) != 0) or (tilemap_get_at_pixel(collisionMap,bbox_side+hsp,bbox_bottom) != 0){
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if(vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if(tilemap_get_at_pixel(collisionMap,bbox_left,bbox_side+vsp) != 0) or (tilemap_get_at_pixel(collisionMap,bbox_right,bbox_side+vsp) != 0){
	vsp = 0;
}
y = y + vsp;
depth =-y;