// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WarpPlayerTo(roomID, targetX, targetY, targetDir){
	var _obj_warp = instance_create_depth(0, 0, -9999, obj_warp);
	if(!instance_exists(obj_player)) {
		var _player = instance_create_layer(0, 0, "Instances", obj_player);
		_player.persistent = true;
	}
	_obj_warp.xTarget = targetX;
	_obj_warp.yTarget = targetY;
	_obj_warp.rmTarget = roomID;
	_obj_warp.target_dir = targetDir;
}