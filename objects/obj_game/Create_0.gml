/// @description Initialize and Globals

randomize();

global.debug = false;

global.gamePaused = false;
global.textSpeed = .75;

global.justWonFruitMinigame = false;

global.iCamera = instance_create_layer(0, 0, layer, obj_camera);

display_set_gui_size(RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);