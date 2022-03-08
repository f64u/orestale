/// @description Insert description here
// You can write your code in this editor

keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
responseSelected += keyDown - keyUp;
var _max = array_length(responses);
var _min = 0;
if(responseSelected > _max - 1) responseSelected = _min;
if(responseSelected < _min) responseSelected = _max - 1;


if(keyboard_check_pressed(vk_enter))  {

	
	if(cutoff < string_length(msg)) {
		cutoff = string_length(msg);
	} else {
		if(responses[0] != -1) {
			with(originInstance) {
				DialogueResponses(other.responseScripts[other.responseSelected]);
			}
		}
	
		instance_destroy();
	
		if(instance_exists(obj_text_queued)) {
			with(obj_text_queued) {
				ticket--;
			}
		} else {
			with(obj_player) {
				state = lastState;
				image_speed = lastImageSpeed;
			}
		}
	}
	
}