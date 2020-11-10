/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0293439B
/// @DnDArgument : "code" "var lay_id = layer_get_id("Background");$(13_10)$(13_10)var back_id = layer_background_get_id(lay_id);$(13_10)$(13_10)layer_background_sprite(back_id, spr_labfloor);$(13_10)$(13_10)alarm[1] = room_speed*4;"
var lay_id = layer_get_id("Background");

var back_id = layer_background_get_id(lay_id);

layer_background_sprite(back_id, spr_labfloor);

alarm[1] = room_speed*4;