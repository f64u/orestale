// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyVision(){
	for(var i = x; i <= RESOLUTION_W; i++) {
		if(place_meeting(i, y, obj_crate)) {
			break;
		}
		if(place_meeting(i, y, obj_good_stealther)) {
			state = StealtherBusted;
			return true;
		}
	}
	
	for(var i = x; i >= 0; i--) {
		if(place_meeting(i, y, obj_crate)) {
			break;
		}
		if(place_meeting(i, y, obj_good_stealther)) {
			state = StealtherBusted;
			return true;
		}
	}
	
	for(var i = y; i <= RESOLUTION_H; i++) {
		if(place_meeting(x, i, obj_crate)) {
			break;
		}
		if(place_meeting(x, i, obj_good_stealther)) {
			state = StealtherBusted;
			return true;
		}
	}
	
	for(var i = y; i >= 0; i--) {
		if(place_meeting(x, i, obj_crate)) {
			break;
		}
		if(place_meeting(x, i, obj_good_stealther)) {
			state = StealtherBusted;
			return true;
		}
	}
	
	return false;
			
}