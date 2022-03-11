// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PredictHeight(msg, lineEnd){
	var lines = PredictLines(msg, lineEnd);

	return lines * 18 + 32; // line height + padding
}