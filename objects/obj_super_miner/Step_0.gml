/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if (x < 48 && dropOff){
	global.mined = BigAdd(BigFromInt(100), global.mined);
	dropOff = false;
	action_sprite_set(spr_super_miner, 0, 1);
	action_move("000001000", 6);
}


if (x > 576 && !dropOff){
	dropOff = 1;
	action_sprite_set(spr_super_miner_mined, 0, 1);
	action_move("000100000", 3);
}