// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CueClytemnestraDialogue(){
	if(global.killedAegisthus) {
		var msgs = [
			["My son!!!", [-1], spr_clytmenstra_happy_portrait],
			["Mom! Wait, don’t move a muscle!!! If anyone deserves to die, it's YOU. If you had just let things go, you didn't have to kill dad, and you definitely didn’t have to… have to abandon us. ", [-1], spr_orestes_infuriated_portrait],
			["You deserve death more than he did, why shouldn’t I impale you on the spot?", [-1], spr_orestes_offended_portrait],
			["My son all I did was to protect you! I sent you away because I knew there could be dire retaliation against me and my family.", [-1], spr_clytemnestra_angry_portrait],
			["So you admit it was you that put us in danger!?!?", [-1], spr_orestes_mad_portrait],
			["\\1How could you do this?", [-1], spr_orestes_infuriated_portrait],
			["You know what!", [-1], spr_orestes_infuriated_portrait],
			[" ", ["14\\Kill Clytemnestra", "15\\Spare Clytemnestra"], spr_orestes_infuriated_portrait]
		];
	} else {
		var msgs = [
			["Son!", [-1], spr_clytmenstra_happy_portrait],
			["\\3Why have you returned???", [-1], spr_clytmenstra_happy_portrait],
			["To make ammends...", [-1], spr_orestes_stern_portrait],
			["I’m not ready to forgive you two for what you did, but I understand why. ", [-1], spr_orestes_sad_portrait],
			["However, things need to change.", [-1], spr_orestes_stern_portrait],
			["I am your son, and have you seen how you are treating your daughter? It is time to stop this madness. ", [-1], spr_orestes_offended_portrait],
			["We must come together as a family. Maybe then the gods will smile again on Argos.", [-1], spr_orestes_stern_portrait],
		];
	}
	
	
	for(var i = 0; i < array_length(msgs); i++) {
		NewTextBox(RESOLUTION_H, msgs[i][0], msgs[i][1], msgs[i][2]);
	}
	
	if(!global.killedAegisthus) {
		EndGame(4);
	}
}