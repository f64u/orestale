// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WashingLadyDialogue(){
	if(!global.gotHorn) {
		var msgs = [
			["Hello old woman, how do you do?", [-1], spr_orestes_neutral_portrait],
			["Why, hello young man. I’m just washing my family’s clothes. How can I assist you?", [-1], spr_washing_lady_portrait],
			["I’ve just arrived in Argos and would like to know where I can establish myself.", [-1], spr_orestes_neutral_portrait],
			["Are there any landlords with rooms available?", [-1], spr_orestes_neutral_portrait],
			["Why, yes! There are many apartments for rent in this part of town.", [-1], spr_washing_lady_portrait],
			["I should warn you, though, to stay clear of this building. The landlord has been charging exuberant fees to all of the tenants.", [-1], spr_washing_lady_portrait],
			["We can barely afford to live here anymore.", [-1], spr_washing_lady_portrait],
			["My husband works for long hours at the docks, and I have to beg people to hire me as a laundress. I fear we may become homeless soon.", [-1], spr_washing_lady_portrait],
			["That is awful! The landlord should be punished for this thievery!", [-1], spr_orestes_offended_portrait],
			["Why, I agree with you, but the landlord is trying to campaign for a new term as a city council member.", [-1], spr_washing_lady_portrait],
			["King Aegistus is not even holding elections anymore like in the days of King Agamemnon.", [-1], spr_washing_lady_portrait],
			["Now, the wealthiest men in Argos just have to pay off the nobles in order to keep power.", [-1], spr_washing_lady_portrait],
			["Oh dear ... well, I hope life in Argos becomes fairer to your family, old woman.", [-1], spr_orestes_sad_portrait],
			["Why thank you, young man.", [-1], spr_washing_lady_portrait],
			["...", [-1], spr_orestes_confused_portrait],
			["That is an interesting cloak you have there.", [-1], spr_orestes_confused_portrait],
			["I only have the clothes on my back, and I will need to sleep on the street until I can get myself established.", [-1], spr_orestes_sad_portrait],
			["Could I have the cloak for extra warmth? Unfortunately I have no money.", [-1], spr_orestes_sad_portrait],
			["Why, you can have the cloak.", [-1], spr_washing_lady_portrait],
			["It doesn't fit my husband anymore.", [-1], spr_washing_lady_portrait],
			["But I have to ask you for a favor first.", [-1], spr_washing_lady_portrait],
			["What favor?", [-1], spr_orestes_neutral_portrait],
			["The landlord has confiscated something dear to me. You have to find him and bring it back. You'll know it when you see it.", [-1], spr_washing_lady_portrait],
			["He and his brother should be standing just outside the palace entrance. You can find him there.", [-1], spr_washing_lady_portrait],
			["Once you give me that item back, I will give you your cloak.", [-1], spr_washing_lady_portrait],
			[" ", ["10\\Sure, I will.", "11\\No, thanks, that's too much work."], spr_orestes_neutral_portrait],
		];
	} else {
		global.gotCloak = true;
		var msgs = [
			["Hello old woman, how do you do?", [-1], spr_orestes_smile_portrait],
			["Why, young man! Were you able to complete the favor?", [-1], spr_washing_lady_portrait],
			["I was. That's why I'm here.", [-1], spr_orestes_smile_portrait],
			["Thank you so much, young man. You don't know how much this horn means to our family.", [-1], spr_washing_lady_portrait],
			["It has been passed down from generation to generation, only to be taken by this \\2greedy\\0 landlord!!", [-1], spr_washing_lady_portrait],
			["I understand. Here it is.", [-1], spr_orestes_neutral_portrait],
			["Thank you. And here is your cloak. Be safe.", [-1], spr_washing_lady_portrait],
		];
	}
	
	for(var i = 0; i < array_length(msgs); i++) {
		NewTextBox(RESOLUTION_H, msgs[i][0], msgs[i][1], msgs[i][2]);
	}

}