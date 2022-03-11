// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){
	var _collision = false;
	

	if (place_meeting(x + hSpeed, y, obj_wall)) {
		hSpeed = 0;
		_collision = true;
	} 

	if (place_meeting(x, y + vSpeed, obj_wall)) {
		vSpeed = 0;
		_collision = true;
	}
	
	if(place_meeting(x + hSpeed, y, obj_lock) && !global.gotKey) {
		hSpeed = 0;
		_collision = true;
		NewTextBox(RESOLUTION_H, "I need a key to get to there.", [-1], spr_orestes_neutral_portrait);
	}
	
	if(place_meeting(x, y + vSpeed, obj_lock) && !global.gotKey) {
		vSpeed = 0;
		_collision = true;
		NewTextBox(RESOLUTION_H, "I need a key to get to there.", [-1], spr_orestes_neutral_portrait);
	}
	
	x += hSpeed;
	y += vSpeed;

	
	return _collision;
}