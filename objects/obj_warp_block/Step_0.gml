/// @description Insert description here
// You can write your code in this editor

if ((place_meeting(x, y, obj_player) || place_meeting(x, y, obj_good_stealther)) && !instance_exists(obj_warp)) {
	
	WarpPlayerTo(rmTarget, xTarget, yTarget, target_dir);
}