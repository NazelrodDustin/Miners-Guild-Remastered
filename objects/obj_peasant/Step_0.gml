/// @description Insert description here
// You can write your code in this editor

if (x < 48 && dropOff){
	global.mined = BigAdd(BigFromInt(20), global.mined);
	dropOff = false;
	action_sprite_set(spr_peasant_right, 0, 1);
	action_move("000001000", 3);
}


if (x > 576){
	dropOff = 1;
	action_sprite_set(spr_peasant_left, 0, 1);
	action_move("000100000", 3);
}
