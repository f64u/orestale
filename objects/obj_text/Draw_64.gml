/// @description Draw textbox
// You can write your code in this editor

function sigmoid(_x) {
	return exp(_x) / (exp(_x) + 1);
}

draw_set_font(font_text);
draw_set_color(c_white);

var message_end = string_length(msg);

if(message_end > 0) {
	
	var charWidth = 12;
	var lineHeight = 18;
	
	var lineEnd = 31;
	var line = 0;
	var space = 0;
	var i = 1;
	var delay = 2;
	if(predictedNLines == -1) {
		// Dry Run Text
		while(i <= string_length(msg)) {
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
		
			// draw_text(tX + (space * charWidth), tY + (line * lineHeight) , string_char_at(msg, i));
		
			space++;
			i++;
		}
		
		predictedNLines = line;
		predictedNLines += 2;
		
		line = 0;
		i = 1;
		space = 0;
	}
	

	
	var margin = 5;
	var offset = 15;
	
	var textHeight = predictedNLines * lineHeight;
	var height = max(textHeight, 80);
	var padding =  max(16, (height - 80) / 2);
	height += padding * 2;
	// draw_text(10, 10, string(predictedNLines * lineHeight) + " " + string(height) + " " + string(padding));
	var tY = yTarget - height - margin * 2 + margin + padding;
	
	var tX = padding + margin;
	if (portrait != noone) tX += 80 + offset; // sprite width

	
	if(cutoff < string_length(msg)) {
		if(timer >= delay) {
			cutoff++;
			timer = 0;
		}
		else timer++;
	}
	
	
	
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
				draw_text(tX + (space * charWidth) + random_range(-1, 1), tY + (line * lineHeight)+random_range(-1, 1), string_char_at(msg, i));
				break;
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
	if(portrait != noone) {
		draw_sprite(portrait, 0, padding + margin, (yTarget - 2 * margin) - height + (height - 80) / 2 );
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
