/// @description Insert description here
// You can write your code in this editor

lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
responseSelected += keyDown - keyUp;
var _max = array_length(responses);
var _min = 0;
if(responseSelected > _max) responseSelected = _min;
if(responseSelected < _min) responseSelected = _max;


x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

if(keyboard_check_pressed(vk_enter)) {
	var _messageLength = string_length(msg);
	if(textProgress >= _messageLength) {
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
	} else {
		if (textProgress > 2) {
			textProgress = _messageLength;
		}
	}
}