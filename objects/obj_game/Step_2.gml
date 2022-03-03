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


	