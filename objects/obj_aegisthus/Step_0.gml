/// @description Insert description here
// You can write your code in this editor

if(done) {
	return;
}

if(madeDecision) {
	if(toBeKilled) {
		sprite_index = spr_aegisthus_dead;
		CueKillingAegisthusDialogue();

	} else {
		NewTextBox(RESOLUTION_H, "I can’t forgive you, but I can be better than you", [-1], spr_orestes_stern_portrait);
	}
	
	done = true;
	return;
}

with(obj_player) {
	if(x - other.x >= 12) {
		other.sprite_index = spr_aegisthus_right;
		other.x += walkSpeed;
		return;
	}
	if(x - other.x <= -12) {
		other.sprite_index = spr_aegisthus_left;
		other.x -= walkSpeed;
		return;
	}
	
	if(y - other.y >= 12) {
		other.sprite_index = spr_aegisthus_walking_down;
		other.y += walkSpeed;
		return;
	}
	
	if(y - other.y <= -12) {
		other.sprite_index = spr_aegisthus_up;
		other.y -= walkSpeed;
		return;
	}
}

if(!foundOrestes) {
	foundOrestes = true;
	CueAegisthusDialogue();
}

