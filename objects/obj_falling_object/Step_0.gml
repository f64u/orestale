/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x, y - sprite_height * 0.6, obj_basket)) {
	with(obj_basket) {
		if(other.object_index == obj_fruit) {
			goodStuff = true;
		} else {
			badStuff = true;
		}
	}
	instance_destroy();
}