/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player) && !instance_exists(obj_warp)) {
	var _obj_warp = instance_create_depth(0, 0, -9999, obj_warp)
	_obj_warp.xTarget = xTarget;
	_obj_warp.yTarget = yTarget;
	_obj_warp.rmTarget = rmTarget;
	_obj_warp.target_dir = target_dir;
}