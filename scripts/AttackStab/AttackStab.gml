// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackStab(){
	
	
	var _spr = sprite_index;
	if(CARDINAL_DIR == 0 && sprite_index != spr_player_attack_right) {
		_spr = spr_player_attack_right;
	} else if (CARDINAL_DIR == 1 && sprite_index != spr_player_attack_up) {
		_spr = spr_player_attack_up;
	} else if (CARDINAL_DIR == 2 && sprite_index != spr_player_attack_left) {
		_spr = spr_player_attack_left;
	} else if(CARDINAL_DIR == 3 && sprite_index != spr_player_attack_down) {
		_spr = spr_player_attack_down;
	}
	
	if(_spr != sprite_index) {
		image_index = 0;
		sprite_index = _spr;
	}
	
	if(image_index >= sprite_get_number(sprite_index) - 1) {
		state = PlayerStateFree;
	}

}