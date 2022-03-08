// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	
	hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);


	if(inputMagnitude != 0) {
		direction = inputDirection;
	}

	switch CARDINAL_DIR {
		case 0:
			if(inputMagnitude) sprite_index = spr_player_walk_right;
			else sprite_index = spr_player_right;
			break;
		case 1:
			if(inputMagnitude) sprite_index = spr_player_walk_up;
			else sprite_index = spr_player_up;
			break;
		case 2:
			if(inputMagnitude) sprite_index = spr_player_walk_left;
			else sprite_index = spr_player_left;
			break;
		case 3:
			if(inputMagnitude) sprite_index = spr_player_walk_down;
			else sprite_index = spr_player_down;
			break;
	}

	PlayerCollision();
	
	if(keyAttack) {
		state = PlayerStateAttack;
		stateAttack = AttackStab;
	}
	
	

	if(keyActivate) {
		var _activateX = x + lengthdir_x(PLAYER_REACH, direction);
		var _activateY = y - 60 + lengthdir_y(PLAYER_REACH, direction);
		activate = instance_position(_activateX, _activateY, obj_parent_entity); // TODO change y offset to match player
		
		if(activate == noone || activate.entityActivateScript == -1) {
			if(global.debug) NewTextBox(0, 0, "looking at " + string(_activateX) + ", " + string(_activateY));
		} else {
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			
			if(activate.entityNPC) {
				with (activate) {
					direction = point_direction(x, y, other.x, other.y);
					image_index = CARDINAL_DIR;
				}
			}
		}
		
	}
	
	if(global.justWonFruitMinigame && !instance_exists(obj_warp)) {
		global.justWonFruitMinigame = false;
		CueWonFruitMinigameDialogue();
	}

}