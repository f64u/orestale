/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _print =  "Score: " + string(thescore) + "\nMistakes: " + string(nbadStuff);

padding = 8;

maxlength = view_get_wport(0);

font_size = font_get_size(font_text);

text_width = string_width_ext(_print, font_size+(font_size/2), maxlength);
text_height = string_height_ext(_print, font_size+(font_size/2), maxlength);

boxwidth = text_width + (padding * 2);
boxheight = text_height + (padding * 2);

var x1 = 512 - boxwidth - 10;
var x2 = 512 - 10 - 10;
var y1 = 10;
var y2 = 10 + boxheight;

// NineSliceBoxStretched(spr_text_bg, x1, y1, x2, y2, 0);


draw_text(x1 + padding, y1 + padding, _print);
