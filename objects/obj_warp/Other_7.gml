/// @description Insert description here
// You can write your code in this editor

room_goto(rmTarget);
with(obj_player) {
	x = other.xTarget;
	y = other.yTarget;
	inputMagnitude = 0;
	direction = other.target_dir * 90;
}

image_speed = -1;
	