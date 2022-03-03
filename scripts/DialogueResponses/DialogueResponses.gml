// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueResponses(response){
	switch(response) {
		case 0: break;
		case 1: NewTextBox(0, 0, "You don't care huh?", [-1]); break;
		case 2: NewTextBox(0, 0, "How?", ["3\\Look around.", "0\\Idk. you tell me."]); break;
		case 3: NewTextBox(0, 0, "Will do.", [-1]);
		default: break;
	}

}