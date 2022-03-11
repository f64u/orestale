// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NotTalkingOrWarping(){
	return !instance_exists(obj_text_queued) && !instance_exists(obj_text) && !instance_exists(obj_warp);
}