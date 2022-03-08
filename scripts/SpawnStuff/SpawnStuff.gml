// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnStuff(){
	var _fruits = [spr_fig, spr_green_apple, spr_orange, spr_red_apple, spr_grapes];
	var _bad_stuff = [spr_radish, spr_sandal, spr_smelly_fish, spr_used_napkin, spr_carrot];
	
	var _good = random_range(0, 10) > 6;
	
	var _obj;
	var _spr;
	if(_good) {
		_obj = obj_fruit;
		_spr = _fruits[random_range(0, array_length(_fruits) - 1)];
	} else {
		_obj = obj_non_fruit;
		_spr = _bad_stuff[random_range(0, array_length(_bad_stuff) - 1)];
	}
	
	var _random_x = random_range(0, 512 - sprite_get_width(_spr));
	
	var _to_drop = instance_create_layer(_random_x, 0, "Instances", _obj);
	_to_drop.sprite_index = _spr;
}