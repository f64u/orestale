/// @description Insert description here
// You can write your code in this editor

if(!done) {
	done = true;
	switch(global.blackRoomIndex) {
		case 0: {
			msgs = PretextMessages();
			break;
		}
		
		case 1: {
			msgs = Ending1Messages();
			break;
		}
		
		case 2: 
			msgs = Ending2Messages();
			break;
		
		case 3:
			msgs = Ending3Messages();
			break;
		
		case 4:
			msgs = Ending4Messages();
			break;
		
		default:
			msgs = PretextMessages();
			break;
			
	}
	
	for(var i = 0; i < array_length(msgs); i++) {
		var height = PredictHeight(msgs[i], 36);
		NewTextBox(RESOLUTION_H / 2 + height / 2, msgs[i], [-1], spr_none);
	}
	
	if(global.blackRoomIndex != 0) {
		var trailer =  [
			"...",
			"The end.",
			"Orestale.",
			"Story boarders and writers:         \\3Henry Huschke\\0 and \\3Noreen Bendaoud",
			"Artists:                        \\3Chloe Gao\\0 and \\3Vianne Basulto",
			"Coder:                               \\3Fady Adal",
		];
		for(var i = 0; i < array_length(trailer); i++) {
			var height = PredictHeight(trailer[i], 36);
			NewTextBox(RESOLUTION_H / 2 + height / 2, trailer[i], [-1], spr_none);
		}
	}
}

if(global.blackRoomIndex == 0 && !instance_exists(obj_text) && !instance_exists(obj_text_queued) && !instance_exists(obj_warp)) {
	WarpPlayerTo(room_graveyard, 80, 360, 0);
}