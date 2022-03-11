// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueResponses(response){
	switch(response) {
		case 0: break;
		//case 1: NewTextBox(RESOLUTION_H, "You don't care huh?", [-1]); break;
		//case 2: NewTextBox(RESOLUTION_H, "How?", ["3\\Look around.", "0\\Idk. you tell me."]); break;
		//case 3: NewTextBox(RESOLUTION_H, "Will do.", [-1]); break;
		case 6: StartFruitMinigame(); break;
		case 7: NewTextBox(RESOLUTION_H, "I understand; if you change your mind, just let me know.", [-1], spr_fruit_vender_portrait); break;
		case 8: break;
		case 9: RefuseAndLeave(); break;
		case 10: WashingLadyAgree(); break;
		case 11: WashingLadyDisagree(); break;
		case 12: {
			with(obj_aegisthus) {
				madeDecision = true;
				toBeKilled = true;
				global.killedAegisthus = true;
			}
			break;
		}
		case 13: {
			with(obj_aegisthus) {
				madeDecision = true;
				image_speed = 0;
				x = 120;
				y = 120;
			}
		}
		
		case 14: {
			global.killedClytemnestra = true;
			with(obj_clytemnestra) {
				madeDecision = true;
				toBeKilled = true;
			}
			break;
		}
		case 15: {
			global.killedOrestes = true;
			with(obj_clytemnestra) {
				madeDecision = true;
			}
			
			with(obj_player) {
				state = PlayerKilled;
			}
			break;
		}
		
		default: break;
	}

}