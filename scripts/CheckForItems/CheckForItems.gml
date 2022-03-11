// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckForItems(){
	if(place_meeting(x, y, obj_horn)) {
		state = StealthMinigameTalking;
		NewTextBox(RESOLUTION_H, "I'm sure this is what the lady wanted me to find.", [-1], spr_orestes_smile_portrait);
		with(obj_horn) {
			instance_destroy();
		}
		global.gotHorn = true;
	}
	
	if(place_meeting(x, y, obj_key)) {
		state = StealthMinigameTalking;
		NewTextBox(RESOLUTION_H, "The city official's palace key! How did he lose it?", [-1], spr_orestes_smile_portrait);
		with(obj_key) {
			instance_destroy();
		}
		global.gotKey = true;
	}
}