/// @description Insert description here
// You can write your code in this editor

room_speed = FRAME_RATE;

state = FruitGamePaused;

saidGameLostStuff = false;
saidGameWonStuff = false;

NewTextBox(RESOLUTION_H, "Sort falling fruits into a basket by\nmoving the basket across the bottom of the screen.", [-1], spr_fruit_vender_portrait);
NewTextBox(RESOLUTION_H, "Avoid catching vegetables like carrots or radishes and other trash. Collect 7 fruits in 60 seconds. If you catch three non-fruits, you’re out.", [-1], spr_fruit_vender_portrait);
