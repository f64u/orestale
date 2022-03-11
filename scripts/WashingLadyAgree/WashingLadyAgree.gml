// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WashingLadyAgree(){
	WarpPlayerTo(room_stealth, 0, 0, 0);

	with(obj_player) {
		instance_destroy();
	}
}