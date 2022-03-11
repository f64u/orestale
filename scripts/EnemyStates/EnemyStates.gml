// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information 

function eq(arr1, arr2) {
	for(var i = 0; i < array_length(arr1); i++) {
		if(arr1[i] != arr2[i]) return false;
	}
	return true;
}

function EnemyRunning() {
	if(EnemyVision()) return;
	
	var collisions = [
		real(place_meeting(x + walkSpeed, y, obj_wall)), 
		real(place_meeting(x, y + walkSpeed, obj_wall)),
		real(place_meeting(x - walkSpeed, y, obj_wall)),
		real(place_meeting(x, y - walkSpeed, obj_wall))
	];
	
	
	state = WaitingToChangeDirection;
	if (eq(collisions, [1, 0, 0, 0]) && movingDirection == 0) {
		var choices = [1, 2, 3];
		movingDirection = choices[irandom_range(0, 2)];
	}  else if(eq(collisions, [0, 1, 0, 0]) && movingDirection == 1) {
		var choices = [0, 2, 3];
		movingDirection = choices[irandom_range(0, 2)];
	} else if (eq(collisions, [0, 0, 1, 0]) && movingDirection == 2) {
		var choices = [0, 1, 3];
		movingDirection = choices[irandom_range(0, 2)];
	} else if (eq(collisions, [0, 0, 0, 1]) && movingDirection == 3) {
		var choices = [0, 1, 2];
		movingDirection = choices[irandom_range(0, 2)];
	} else if (eq(collisions, [1, 1, 0, 0]) && (movingDirection == 0 || movingDirection == 1)) {
		var choices = [2, 3];
		movingDirection = choices[irandom_range(0, 1)];
	} else if (eq(collisions, [0, 1, 1, 0]) && (movingDirection == 1 || movingDirection == 2)) {
		var choices = [0, 3];
		movingDirection = choices[irandom_range(0, 1)];
	} else if (eq(collisions, [0, 0, 1, 1]) && (movingDirection == 2 || movingDirection == 3)) {
		var choices = [0, 1];
		movingDirection = choices[irandom_range(0, 1)];
	} else if (eq(collisions, [1, 0, 0, 1]) && (movingDirection == 2 || movingDirection == 3)) {
		var choices = [1, 2];
		movingDirection = choices[irandom_range(0, 1)];
	} else if (eq(collisions, [1, 1, 1, 0]) && movingDirection != 3) {
		movingDirection = 3;
	} else if (eq(collisions, [0, 1, 1, 1]) && movingDirection != 0) {
		movingDirection = 0;
	}  else if (eq(collisions, [1, 0, 1, 1]) && movingDirection != 1) {
		movingDirection = 1;
	}  else if (eq(collisions, [1, 1, 0, 1]) && movingDirection != 2) {
		movingDirection = 2;
	} else {
		state = EnemyRunning;
		switch movingDirection {
			case 0:
				x += walkSpeed;
				sprite_index = spr_guard_birdview_walking_right;
				break;
			case 1:
				sprite_index = spr_guard_birdview_walking_down;
				y += walkSpeed;
				break;
			case 2:
				sprite_index = spr_guard_birdview_walking_left;
				x -= walkSpeed;
				break;
			case 3:
				sprite_index = spr_guard_birdview_walking_up;
				y -= walkSpeed;
				break;
		}
	}

}

function WaitingToChangeDirection() {
	if(waitingTime <= 0) {
		waitingTime = room_speed * seconds;
		state = EnemyRunning;
	} else {
		waitingTime--;
		switch movingDirection {
			case 0:
				sprite_index = spr_guard_birdview_right;
				break;
			case 1:
				sprite_index = spr_guard_birdview_down;
				break;
			case 2:
				sprite_index = spr_guard_birdview_left;
				break;
			case 3:
				sprite_index = spr_guard_birdview_up;
				break;
		}
	}
}

function StealtherBusted() {
	with(obj_good_stealther) {
		busted = true;
	}
	state = EnemyPaused;
}

function EnemyPaused() {
	
}

 