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
			fallSpeed *= 1 + offSet;
		}
	}
	
	if(timeTimer <= 0) {
		timeTimer = room_speed;
	} else {
		timeTimer--;
		if(timeTimer % FRAME_RATE == 0) {
			time--;
		}
	}
		

	if(goodStuff) {
		thescore += 1;
		goodStuff = false;
	}

	if(badStuff) {
		nbadStuff += 1;
		badStuff = false;
	}

	with(obj_fruit_score) {
		thescore = other.thescore;
		nbadStuff = other.nbadStuff;
	}
	
	with(obj_fruit_timer) {
		time = other.time;
	}
	
	with(obj_falling_object) {
		y += other.fallSpeed;

		if(y >= RESOLUTION_H) {
			instance_destroy();
		}

	}
	
	if(thescore >= 7) {
		state = FruitGameWon;
	}
	


	if(nbadStuff == 3) {
		state = FruitGameLost;
		lostText = "You're bad at sorting.";
	}
	
	if(time <= 0) {
		state = FruitGameLost;
		lostText = "You sort slow."
	}
}

function FruitGamePaused() {
	if(!instance_exists(obj_text) && !instance_exists(obj_text_queued)) {
		state = FruitGameRunning;
	}
}

function FruitGameLost() {
	if(!saidGameLostStuff) {
		saidGameLostStuff = true;
		NewTextBox(RESOLUTION_H, lostText, [-1], spr_fruit_vender_portrait);
	}
	if(!instance_exists(obj_text) && !instance_exists(obj_warp)) {
		WarpPlayerTo(room_marketplace, 434, 160, 1);
	}
}

function FruitGameWon() {
	if(!saidGameLostStuff) {
		saidGameWonStuff = true;
		global.justWonFruitMinigame = true;
		global.gotCap = true;
	}
	if(!instance_exists(obj_warp)) {
		WarpPlayerTo(room_marketplace, 434, 160, 1);
	}
}