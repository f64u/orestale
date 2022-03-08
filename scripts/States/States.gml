// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FruitGameRunning(){
	

	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));

	inputDirection = point_direction(0, 0, keyRight - keyLeft, 0);
	inputMagnitude = keyRight - keyLeft != 0;

	hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);

	if(inputMagnitude != 0) {
		direction = inputDirection;
	}

	if (place_meeting(x + hSpeed, y, obj_wall)) {
		hSpeed = 0;
	} 

	x += hSpeed;


	if(spawn_timer <= 0) {
		spawn_timer = room_speed * seconds;
		SpawnStuff();
	} else {
		spawn_timer--;
		if(spawn_timer % FRAME_RATE == 0) {
			seconds *= offSet;
		}
	}

	if(goodStuff) {
		thescore += 1;
		goodStuff = false;
	}

	if(badStuff) {
		thescore -= 1;
		nbadStuff += 1;
		badStuff = 0;
	}

	with(obj_fruit_score) {
		thescore = other.thescore;
		nbadStuff = other.nbadStuff;
	}
	
	with(obj_falling_object) {
		y += 2;

		if(y >= RESOLUTION_H) {
			instance_destroy();
		}

	}
	


	if(nbadStuff == 3) {
		state = FruitGameLost;
	}
}

function FruitGamePaused() {
	if(!instance_exists(obj_text)) {
		state = FruitGameRunning;
	}
}

function FruitGameLost() {
	NewTextBox(RESOLUTION_H, "You lose!", [-1]);
	if(!instance_exists(obj_text) && !instance_exists(obj_warp)) {
		WarpPlayerTo(room_marketplace, 434, 160, 1);
	}
}