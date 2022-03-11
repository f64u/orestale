// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	
	hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);


	if(inputMagnitude != 0) {
		direction = inputDirection;
	}
	
	var cloaked = global.gotCap && global.gotCloak && room == room_palace_entrance;

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
	
	if(inputMagnitude && cloaked) {
		sprite_index = spr_cloaked_orestes_walking;
	} else if(cloaked) {
		sprite_index = spr_cloaked_orestes_still;
	}

	PlayerCollision();
	

	if(keyActivate) {
		var _activateX = x + lengthdir_x(PLAYER_REACH, direction);
		var _activateY = y + lengthdir_y(PLAYER_REACH, direction);
		activate = instance_position(_activateX, _activateY, obj_parent_entity); // TODO change y offset to match player
		
		for(var i = 0; i < PLAYER_REACH && activate == noone; i++) {
			switch CARDINAL_DIR {
				case 0: {
					activate = instance_position(x + i, y, obj_parent_entity);
					break;
				}
				
				case 1: {
					activate = instance_position(x, y - i, obj_parent_entity);
					break;
				}
				
				case 2: {
					activate = instance_position(x - i, y, obj_parent_entity);
					break;
				}
				
				case 3: {
					activate = instance_position(x, y + i, obj_parent_entity);
					break;
				}
			}
		}
		
		
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
			
			activate = noone;
		}
		
	}
	
	if(global.firstTimeInMarketplace && room == room_marketplace && !instance_exists(obj_warp)) {
		NewTextBox(RESOLUTION_H, "I can already tell that so much has changed in Argos under mother and Aegistus.", [-1], spr_orestes_stern_portrait);
		NewTextBox(RESOLUTION_H, "I must do what is best for my city; perhaps the common folk will bring to light just how badly life has become.", [-1], spr_orestes_stern_portrait);

		global.firstTimeInMarketplace = false;
	}
	
	if(room == room_palace_entrance && !instance_exists(obj_warp) && (!global.gotCloak || !global.gotCap) && !wasBusted) {
		NewTextBox(RESOLUTION_H, "What are \\2you\\0 doing here? Get out.", [-1], spr_guard_portrait);
		wasBusted = true;
	}
	
	if(wasBusted && NotTalkingOrWarping()) {
		wasBusted = false;
		WarpPlayerTo(room_side_entrance, 73, 297, 0);
	}
	
	if(global.justWonFruitMinigame && !instance_exists(obj_warp)) {
		global.justWonFruitMinigame = false;
		CueWonFruitMinigameDialogue();
	}

}