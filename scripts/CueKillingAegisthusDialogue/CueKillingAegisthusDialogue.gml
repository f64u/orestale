// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CueKillingAegisthusDialogue(){
	var msgs = [
		["And so is this.", spr_orestes_infuriated_portrait],
		["...", spr_orestes_horrified_portrait],
		["\\2What have I done?!!! He's dead!!!", spr_orestes_horrified_portrait],
	];
	
	for(var i = 0; i < array_length(msgs); i++) {
		NewTextBox(RESOLUTION_H, msgs[i][0], [-1], msgs[i][1]);
	}
}