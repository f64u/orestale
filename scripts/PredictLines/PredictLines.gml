// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PredictLines(msg, lineEnd){
	var i  = 1;
	var space = 0;
	var line = 0;
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
		
	
		space++;
		i++;
	}
	
	return line + 1;
}