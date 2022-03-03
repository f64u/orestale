/// @description Draw textbox
// You can write your code in this editor
NineSliceBoxStretched(spr_text_bg, x1, y1, x2, y2, background);
draw_set_font(font_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

var _print = string_copy(msg, 1, textProgress);
if(responses[0] != -1 && textProgress >= string_length(msg)) {
	for(var i = 0; i < array_length(responses); i++) {
		_print += "\n";
		if(i == responseSelected) {
			_print += "> ";
		}
		_print += responses[i];
		if(i == responseSelected) {
			_print += " <";
		}
		
	}
}
	

draw_text((x1 + x2) / 2, y1 + 12, _print);
