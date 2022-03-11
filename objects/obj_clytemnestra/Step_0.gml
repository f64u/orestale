/// @description Insert description here
// You can write your code in this editor


if(done) {
	return;
}

if(madeDecision) {
	if(toBeKilled) {
		sprite_index = spr_clytemnestra_dead;
		KillClytemnestra();

	} else {
		SpareClytemnestra();
	}
	
	done = true;
	return;
}


with(obj_player) {
	if(x - other.x >= 12) {
		other.sprite_index = spr_clytemnestra_right;
		other.x += walkSpeed;
		return;
	}
	if(x - other.x <= -12) {
		other.sprite_index = spr_clytemnestra_left;
		other.x -= walkSpeed;
		return;
	}
	
	if(y - other.y >= 12) {
		other.sprite_index = spr_clytemnestra_down_walking;
		other.y += walkSpeed;
		return;
	}
	
	if(y - other.y <= -12) {
		other.sprite_index = spr_clytemnestra_up;
		other.y -= walkSpeed;
		return;
	}
}

if(!foundOrestes) {
	foundOrestes = true;
	CueClytemnestraDialogue();
}
