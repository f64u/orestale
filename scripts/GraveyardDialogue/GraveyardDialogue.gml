// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GraveyardDialogue(){
	NewTextBox(RESOLUTION_H, "Hey, you look familiar!", [-1], spr_orestes_confused_portrait);
	NewTextBox(RESOLUTION_H, "*!!!*", [-1], spr_electra_surprised_portrait);
	NewTextBox(RESOLUTION_H, "Come with me!", [-1], spr_electra_neutral_portrait);
	NewTextBox(RESOLUTION_H, "Who are you?", [-1], spr_orestes_confused_portrait);
	NewTextBox(RESOLUTION_H, "Your sister! Do you not see the similarity Orestes?", [-1], spr_electra_mad_portrait);
	NewTextBox(RESOLUTION_H, "Electra! Why are you like this? A slave in tatters. Who has harmed you so?", [-1], spr_orestes_sad_portrait);
	NewTextBox(RESOLUTION_H, "That \\1rapacious bitch\\0 our mother!", [-1], spr_electra_mad_mad_portrait);
	NewTextBox(RESOLUTION_H, "She has chained me so, concerned for my sway on the town.", [-1], spr_electra_mad_portrait);
	NewTextBox(RESOLUTION_H, "OH! How glorious it is to see you here!", [-1], spr_electra_sad_worried_portrait);
	NewTextBox(RESOLUTION_H, "Why? What can I do to help? Why is our mother like this?", [-1], spr_orestes_sad_portrait);
	NewTextBox(RESOLUTION_H, "She is a scourge on Argos!!!!! She sits in her sinful nest with that \\1SNAKE\\0 Aegisthus and rules OUR land with an iron fist.", [-1], spr_electra_mad_mad_portrait);
	NewTextBox(RESOLUTION_H, "She revels in her coup against our father.", [-1], spr_electra_mad_portrait);
	NewTextBox(RESOLUTION_H, "Yet he killed our sister and took other lovers, forget you not?", [-1], spr_orestes_confused_portrait);
	NewTextBox(RESOLUTION_H, "Surely our mother was not fully wrong to depose such a husband?", [-1], spr_orestes_confused_portrait);
	NewTextBox(RESOLUTION_H, "You must not be so naive Orestes—our mother is pure evil. Do you not see what she does to me at this hour?", [-1], spr_electra_mad_portrait);
	NewTextBox(RESOLUTION_H, "Surely you must at least attend the city, see the suffering of the people.", [-1], spr_electra_mad_portrait);
	NewTextBox(RESOLUTION_H, "Then you must confront her and put an end to this reign permanently.", [-1], spr_electra_mad_portrait);
	NewTextBox(RESOLUTION_H, "Then, WE can rule what is \\1OURS\\0, together. ", [-1], spr_electra_mad_portrait);
	NewTextBox(RESOLUTION_H, "I know you’ll see sense.", [-1], spr_electra_mad_portrait);
	NewTextBox(RESOLUTION_H, " ", ["8\\Go into the city, planning to take revenge", "9\\Refuse to take revenge, and leave"], spr_orestes_neutral_portrait);
}