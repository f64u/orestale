/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape)) {
	global.gamePaused = !global.gamePaused;
	
	if(global.gamePaused) {
		with(all) {
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	} else {
		with (all) {
			image_speed = gamePausedImageSpeed;
		}
	}
}


if(global.killedOrestes && instance_number(obj_text_queued) <= 1) {
	with(obj_player) {
		state = PlayerKilled
	}
}

if(global.endGame) {
	
	if((global.killedClytemnestra || global.killedOrestes)) {
		if(!instance_exists(obj_text)) {
			if(timer >= 0) {
				timer--;
				return;
			} 
		}
	}
	
	if(NotTalkingOrWarping()) {
		WarpPlayerTo(room_black_screen, 0, 0, 0);
		with(obj_player) {
			instance_destroy();
		}
		global.endGame = false;

	}
}


	