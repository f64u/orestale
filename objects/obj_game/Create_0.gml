/// @description Initialize and Globals

randomize();

global.endGame = false;

global.debug = false;

global.gamePaused = false;
global.textSpeed = 2;

global.justWonFruitMinigame = false;
global.firstTimeInMarketplace = true;
global.blackRoomIndex = 0;
global.gotKey = false;
global.gotHorn = false;
global.gotCloak = false;
global.gotCap = false;
global.killedAegisthus = false;
global.killedClytemnestra = false;
global.killedOrestes = false;

global.iCamera = instance_create_layer(0, 0, layer, obj_camera);

timer = room_speed * 4;

display_set_gui_size(RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);

