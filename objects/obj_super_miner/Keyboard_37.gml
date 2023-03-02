/*action_set_relative(1);
var __b__;
__b__ = action_if_variable(dropOff, 1, 0);
if __b__
{
{
action_set_score(100);
}
}
{
action_set_relative(0);
action_move("000001000", 6);
action_set_relative(1);
}
{
action_set_relative(0);
dropOff = 0;
action_set_relative(1);
}
action_sprite_set(spr_super_miner, 0, 1);
action_set_relative(0);
