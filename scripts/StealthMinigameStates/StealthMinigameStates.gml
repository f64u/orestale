// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StealthMinigameRunning(){
	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
	keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
	inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
	inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
	
	hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);
	
	if(inputMagnitude != 0) {
		direction = inputDirection;
	}
	
	switch CARDINAL_DIR {
		case 0:
			if(inputMagnitude) sprite_index = spr_orestes_birdview_normal_walking_right;
			else sprite_index = spr_orestes_birdview_normal_still_right;
			break;
		case 1:
			if(inputMagnitude) sprite_index = spr_orestes_birdview_normal_walking_up;
			else sprite_index = spr_orestes_birdview_normal_still_up;
			break;
		case 2:
			if(inputMagnitude) sprite_index = spr_orestes_birdview_normal_walking_left;
			else sprite_index = spr_orestes_birdview_normal_still_left;
			break;
		case 3:
			if(inputMagnitude) sprite_index = spr_orestes_birdview_normal_walking_down;
			else sprite_index = spr_orestes_birdview_normal_still_down;
			break;
	}

	
	if (place_meeting(x + hSpeed, y, obj_wall)) {
		hSpeed = 0;
	} 
	
	if(place_meeting(x, y + vSpeed, obj_wall)) {
		vSpeed = 0
	}
	
	x += hSpeed;
	y += vSpeed;
	
	CheckForItems();
	
	if(busted) {
		state = StealthMinigameLost;
		NewTextBox(RESOLUTION_H, "What are you doing here? And what is this you're holding?", [-1], spr_guard_portrait);
		NewTextBox(RESOLUTION_H, "Give them back, and get out!", [-1], spr_guard_portrait);
		image_speed = 0;
		global.gotHorn = false;
		global.gotKey = false;
	}

}

function StealthMinigameTalking() {
	if(!instance_exists(obj_text) && !instance_exists(obj_text_queued)) {
		state = StealthMinigameRunning;
	}
}

function StealthMinigameLost() {
	if(!instance_exists(obj_text)  && !instance_exists(obj_text_queued) && !instance_exists(obj_warp)) {
		WarpPlayerTo(room_side_entrance, 290, 266, 0);
	}
}