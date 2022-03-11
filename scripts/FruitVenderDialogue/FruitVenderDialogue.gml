// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FruitVenderDialogue(){
	NewTextBox(RESOLUTION_H, "Hello old man, how do you do?", [-1], spr_orestes_neutral_portrait);
	NewTextBox(RESOLUTION_H, "Well, son, I’m still kicking, thank the Gods.", [-1], spr_fruit_vender_portrait);
	NewTextBox(RESOLUTION_H, "Are things in your life not going as they should be? ", [-1], spr_orestes_confused_portrait);
	NewTextBox(RESOLUTION_H, "If you would be willing to enlighten a traveler such as myself, I would like to know what I can do to help.", [-1], spr_orestes_neutral_portrait);
	NewTextBox(RESOLUTION_H, "You are very kind, young man, but I doubt there is much you could do to help me or anyone else. ", [-1], spr_fruit_vender_portrait);
	NewTextBox(RESOLUTION_H, "After our late king Agamemnon died after his return from Troy, his cousin Aegisthus took the throne. ", [-1], spr_fruit_vender_portrait);
	NewTextBox(RESOLUTION_H, "Along with Queen Clytemnestra, they are bleeding us common folk dry.", [-1], spr_fruit_vender_portrait);
	NewTextBox(RESOLUTION_H, "They’ve raised taxes and tariffs, prevented the citizens from assembling, and prohibited us from mentioning king Agamemnon’s name.", [-1], spr_fruit_vender_portrait);
	NewTextBox(RESOLUTION_H, "That sounds so awful! Does the late king not have a son that can restore peace to Argos? ", [-1], spr_orestes_confused_portrait);
	NewTextBox(RESOLUTION_H, "I am not sure. The prince, Orestes, has not lived in Argos for a long time.", [-1], spr_fruit_vender_portrait);
	NewTextBox(RESOLUTION_H, "Some believe he was banished, or that he was removed from the line of succession. ", [-1], spr_fruit_vender_portrait);

	NewTextBox(RESOLUTION_H, "Whatever the case may be, it will take a miracle for things to change. ", [-1], spr_fruit_vender_portrait);
	NewTextBox(RESOLUTION_H, "*\\1A miracle or a curse\\0* ", [-1], spr_orestes_stern_portrait);
	NewTextBox(RESOLUTION_H, "I will be praying to Father Zeus that they will, old man. ", [-1], spr_orestes_smile_portrait);
	NewTextBox(RESOLUTION_H, "... ", [-1], spr_orestes_confused_portrait);
	NewTextBox(RESOLUTION_H, "What a homely looking cap you have there. Unfortunately, I lost my cap as I was traveling here, but I don’t have any money to spend.", [-1], spr_orestes_neutral_portrait);
	NewTextBox(RESOLUTION_H, "Would you let me have it? ", [-1], spr_orestes_smile_portrait);
	NewTextBox(RESOLUTION_H, "Ah, this old thing? Well, I suppose I could give it to you, but since my business has been struggling, you’re gonna have to work for it. ", [-1], spr_fruit_vender_portrait);
	NewTextBox(RESOLUTION_H, "In my old age it is difficult to stock my wares. If you can help me sort my fruits, I’ll give you the cap. ", [-1], spr_fruit_vender_portrait);
	NewTextBox(RESOLUTION_H, " ", ["6\\I will help you.", "7\\Sorry, but I can't help you."], spr_orestes_neutral_portrait);

}