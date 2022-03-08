/// @description Draw textbox
// You can write your code in this editor

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

padding = 16;
maxlength = view_get_wport(0);

font_size = font_get_size(font_text);

text_width = string_width_ext(_print, font_size+(font_size/2), maxlength);
text_height = string_height_ext(_print, font_size+(font_size/2), maxlength);

boxwidth = text_width + (padding * 2);
boxheight = text_height + (padding * 2);

NineSliceBoxStretched(spr_text_bg, x1, pos - boxheight, x2, pos, background);


draw_text((x1 + x2) / 2, pos - boxheight + padding, _print);
