/// @description (Old DnD) - draw score
/// @param x	x position 
/// @param y	y position 
/// @param msg	message to display before score
function action_draw_score(argument0, argument1, argument2) {

	var xx = argument0;
	var yy = argument1;
	if (global.__argument_relative) {
		xx += x;
		yy += y;
	}  // end if

	draw_text( xx, yy, string_hash_to_newline(argument2)+string(score));




}
