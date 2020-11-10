/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2591EEB2
/// @DnDArgument : "code" "var lay_id = layer_get_id("Background");$(13_10)var back_id = layer_background_get_id(lay_id);$(13_10)layer_background_sprite(back_id, spr_level3floorbg);$(13_10)alarm[2] = room_speed*6;"
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, spr_level3floorbg);
alarm[2] = room_speed*6;