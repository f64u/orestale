// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CueAegisthusDialogue(){
	var msgs = [
		["\\2Who are you?!?", [-1], spr_aegisthus_really_mad_portrait],
		["Your worst \\2nightmare\\0. You plotted my father’s demise and now you strut around his halls as if you are the king.", [-1], spr_orestes_mad_portrait],
		["So you’re Aggy’s boy??? Guards!!! Apprehend this enemy of the state!", [-1], spr_aegisthus_really_mad_portrait],
		["Not so fast, I believe your guards share a similar view of this reign, it’s illegitimate! ", [-1], spr_orestes_mad_portrait],
		["...", [-1], spr_aegisthus_neutral_portrait],
		["\\1Where are the guards?!!", [-1], spr_aegisthus_really_mad_portrait],
		["...", [-1], spr_aegisthus_neutral_portrait],
		["So you plan to kill me? Why? I saved your mother. That \"King of Kings\" left his queen alone after slaughtering her daughter before her eyes.", [-1], spr_aegisthus_mad_portrait],
		["Then he abandons her for TEN YEARS. ", [-1], spr_aegisthus_really_mad_portrait],
		["No, he was no king, he had no reign to speak of in Argos. Your mother had no support. If I hadn’t come she’d have been carrion fed to the cattle by the city council before Protesilaus could step foot onto that cursed beach in Ilium.", [-1], spr_aegisthus_mad_portrait],
		["\\1I backed her up!", [-1], spr_aegisthus_really_mad_portrait],
		["Backed her right up into MURDER!!!! I should end things right now as my payment for such a ludicrous excuse.", [-1], spr_orestes_infuriated_portrait],
		["\\1She loves me!", [-1], spr_aegisthus_really_mad_portrait],
		["I...", [-1], spr_aegisthus_neutral_portrait],
		["I love her.", [-1], spr_aegisthus_neutral_portrait],
		["Listen, ...", [-1], spr_aegisthus_neutral_portrait],
		["That pompous bastard I have the misfortune of calling cousin violated every woman he could see. ", [-1], spr_aegisthus_mad_portrait],
		["He nearly lost the \\1FUCKING WAR\\0 over it! ", [-1], spr_aegisthus_really_mad_portrait],
		["After what he did to her you’re lucky we’ve let a drop of his blood continue to beat. ", [-1], spr_aegisthus_really_mad_portrait],
		["That DIDN’T Mean you had to kill him!", [-1], spr_orestes_infuriated_portrait],
		["Really!?!?!", [-1], spr_aegisthus_really_mad_portrait],
		["We were just going to negotiate with the greatest warlord in the world, appeal to his humanity, huh? And, by the way, maybe you should show some gratitude. We made sure you’d have a good life.", [-1], spr_aegisthus_mad_portrait],
		["That was a \\2CHOICE\\0.", [-1], spr_aegisthus_really_mad_portrait],
		[" ", ["12\\Kill Aegisthus", "13\\Spare Aegisthus"], spr_orestes_infuriated_portrait]
	];
	
	for(var i = 0; i < array_length(msgs); i++) {
		NewTextBox(RESOLUTION_H, msgs[i][0], msgs[i][1], msgs[i][2]);
	}
}