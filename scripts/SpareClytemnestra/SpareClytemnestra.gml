// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpareClytemnestra(){
	var msgs = [
		["I can't do it!!!", spr_orestes_struggling_portrait],
		["Thank you, my dear son!", spr_clytemnestra_smug_portrait],
		["...", spr_clytemnestra_evil_smile_portrait],
		["For showing me I must wipe out ALL of this cursed line!!!!", spr_clytemnestra_evil_smile_portrait],
		["You’re almost as pathetic as your father.", spr_clytmenstra_happy_portrait]
	];
	
	for(var i = 0; i < array_length(msgs); i++) {
		NewTextBox(RESOLUTION_H, msgs[i][0], [-1], msgs[i][1]);
	}
	
	global.killedOrestes = true;
	
	EndGame(3);
	
}