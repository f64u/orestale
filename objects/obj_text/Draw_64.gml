/// @description Draw textbox
// You can write your code in this editor

draw_set_font(font_text);
draw_set_color(c_white);

var message_end = string_length(msg);

if(message_end > 0) {
	
	var charWidth = 12;
	var lineHeight = 18;
	
	var lineEnd = 31;
	if(portrait == spr_none) lineEnd += 5;

	var line = 0;
	var space = 0;
	var i = 1;
	var delay = global.textSpeed;
	
	var margin = 5;
	var offset = 15;
	
	if(predictedNLines == -1) {
		predictedNLines = PredictLines(msg, lineEnd);
	}
	
	var textHeight = predictedNLines * lineHeight;
	var height = max(textHeight, 80);
	var paddingY =  max(16, (height - 80) / 2);
	height += 32;

	// draw_text(10, 10, string(predictedNLines * lineHeight) + " " + string(height) + " " + string(padding));
	var tY = yTarget - height - margin * 2 + margin + 16;
	
	var tX = 16 + margin;
	if (portrait != spr_none) tX += 80 + offset;  // sprite width

	
	if(cutoff < string_length(msg)) {
		if(timer >= delay) {
			cutoff++;
			timer = 0;
		}
		else timer++;
	}
	
	if(room != room_black_screen) 
		NineSliceBoxStretched(spr_text_bg, margin, yTarget - height - margin * 2, RESOLUTION_W - margin, yTarget - margin * 2, 0);
	
	var modifier = 0;
	// Draw Text
	while(i <= string_length(msg) && i <= cutoff) {
		if(string_char_at(msg, i) == "\\") {
			modifier = real(string_char_at(msg, ++i));
			i++;
		}
		
		
		var length = 0;
		while(string_char_at(msg, i) != " " && i <= string_length(msg)) {
			i++;
			length++;
		}
		
		if(space + length > lineEnd) {
			space = 0;
			line++;
		}
		
		i -= length;
		
		
		switch(modifier) {
			case 0:
				draw_text(tX + (space * charWidth), tY + (line * lineHeight) , string_char_at(msg, i));
				break;
			case 1: // shaky
			case 2: {
				if modifier == 2 {
					var r = 0.3;
				} else {
					var r = 1;
				}
				draw_text(tX + (space * charWidth) + random_range(-r, r), tY + (line * lineHeight)+random_range(-r, r), string_char_at(msg, i));
				break;
			}
			case 3: { // wobble
				var dy = power(sin((current_time / 10000 - (i/string_length(msg))) * 40), 2) * 3;
				draw_text(tX + (space * charWidth), tY + (line * lineHeight) + dy, string_char_at(msg, i));
				break;
			}
			
		}
		
		space++;
		i++;
	}
	
	
	// Draw Sprite
	if(portrait != spr_none) {
		draw_sprite(portrait, 0, 16 + margin, (yTarget - 2 * margin) - height + (height - 80) / 2 );
	}
	
	
	// Draw Responses
	if(responses[0] != -1 && cutoff >= string_length(msg)) {
		
			
		if(!increasedLine) {
			increasedLine = true;
			predictedNLines += array_length(responses) + 1;
		}
		space = 0;
		if(msg != " ") {
			line += 2;
		}
		
		
		
		for(var res = 0; res < array_length(responses); res++) {
			if(res == responseSelected) {
				draw_set_color(c_red);
				draw_text(tX + sin(current_time / 500 * pi) * 2, tY + (line * lineHeight), "-> ");
				draw_set_color(c_white);
			}
			
			var resp = responses[res];
			
			var modifier = 0;
			i = 1;
			space = 3;
			// Draw Text
			while(i <= string_length(resp)) {
				if(string_char_at(resp, i) == "\\") {
					modifier = real(string_char_at(resp, ++i));
					i++;
				}
		
		
				var length = 0;
				while(string_char_at(resp, i) != " " && i <= string_length(resp)) {
					i++;
					length++;
				}
		
				if(space + length > lineEnd) {
					space = 3;
					line++;
				}
		
				i -= length;
		
		
				
				draw_text(tX + (space * charWidth), tY + (line * lineHeight) , string_char_at(resp, i));
			
		
				space++;
				i++;
			}
			
			line++;
			
		}
	}
	
}
