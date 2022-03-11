// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RefuseAndLeave(){
	NewTextBox(RESOLUTION_H, "You’re clearly blinded by your ambition and have lost sense.", [-1], spr_orestes_stern_portrait);
	NewTextBox(RESOLUTION_H, "Let bygones be bygones and forget these notions. I’m sure you’re in this situation through your own lunacy, and I’m certain that you have only your mouth to blame for this sorry state.", [-1], spr_orestes_stern_portrait);
	NewTextBox(RESOLUTION_H, "However, I too understand the great crime of our mother and thus she loses another child.", [-1], spr_orestes_stern_portrait);
	NewTextBox(RESOLUTION_H, "I will return to Phocis immediately. If you wish, you can join me.", [-1], spr_orestes_stern_portrait);
	NewTextBox(RESOLUTION_H, "If not, feel free to suffer here. ", [-1], spr_orestes_stern_portrait);

	NewTextBox(RESOLUTION_H, "...", [-1], spr_electra_mad_mad_portrait);
	NewTextBox(RESOLUTION_H, "\\1This is a disgrace to our father!!!\\0", [-1], spr_electra_mad_mad_portrait);
	NewTextBox(RESOLUTION_H, "\\1You will never sleep a full night again.\\0", [-1], spr_electra_mad_mad_portrait);
	NewTextBox(RESOLUTION_H, "If I knew a brother of mine could be so \\1weak\\0,...", [-1], spr_electra_mad_mad_portrait);
	NewTextBox(RESOLUTION_H, "...oh I’d have done the deed myself years ago. ", [-1], spr_electra_mad_mad_portrait);
	NewTextBox(RESOLUTION_H, "\\1Off with you disgrace to house Argos!!!!!!!\\0", [-1], spr_electra_mad_mad_portrait);
	
	EndGame(1);
}