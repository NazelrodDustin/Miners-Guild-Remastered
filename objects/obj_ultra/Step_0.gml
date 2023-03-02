/// @description Insert description here
// You can write your code in this editor

if (x < 48 && dropOff){
	action_set_relative(1);
	action_set_score(400);
	action_set_relative(0);
	dropOff = false;
	action_sprite_set(spr_ultra, 0, 1);
	action_move("000001000", 6);
}


if (x > 576 && !dropOff){
	dropOff = 1;
	action_sprite_set(spr_ultra_mined, 0, 1);
	action_move("000100000", 6);
}