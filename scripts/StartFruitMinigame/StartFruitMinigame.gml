// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StartFruitMinigame(){
	
	WarpPlayerTo(room_fruit_minigame, 0, 0, 0);
	
	with(obj_player) {
		instance_destroy();
	}

}