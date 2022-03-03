// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewTextBox(_x, _y, _msg, _responses){
	var _obj;
	if(instance_exists(obj_text)) {
		_obj = obj_text_queued;
	} else {
		_obj = obj_text;
	}
	
	
	
	with(instance_create_layer(_x, _y, "Instances", _obj)) {
		msg = _msg;
		if(instance_exists(other)) {
			originInstance = other.id;
		} else {
			originInstance = noone;
		}
		
		responses = _responses;
		if(responses[0] == -1) {
			responseScripts = [-1];
		} else {
			for(var i = 0; i < array_length(responses); i++) {
			var _markerPos = string_pos("\\", responses[i]);
			responseScripts[i] = real(string_copy(responses[i], 1, _markerPos - 1));
			responses[i] = string_delete(responses[i], 1, _markerPos);
			breakpoint = 10;
			}
		}

	}
	
	with(obj_player) {
		if(state != PlayerStateLocked) {
			lastState = state;
			lastImageSpeed = image_speed;
			state = PlayerStateLocked;
		}
	}				

}