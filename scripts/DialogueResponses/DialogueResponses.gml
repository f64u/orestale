// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueResponses(response){
	switch(response) {
		case 0: break;
		case 1: NewTextBox(RESOLUTION_H, "You don't care huh?", [-1]); break;
		case 2: NewTextBox(RESOLUTION_H, "How?", ["3\\Look around.", "0\\Idk. you tell me."]); break;
		case 3: NewTextBox(RESOLUTION_H, "Will do.", [-1]); break;
		case 7: NewTextBox(RESOLUTION_H, "I understand; if you change your mind, just let me know.", [-1], spr_fruit_vender_portrait); break;
		case 6: StartFruitMinigame(); break;
		default: break;
	}

}