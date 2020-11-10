/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FF3B795
/// @DnDArgument : "code" "if (room == Level_Menu){$(13_10)	if (keyboard_check_pressed(vk_enter)){$(13_10)		room_goto_next();$(13_10)	}$(13_10)}$(13_10)/*$(13_10)var lay_id = layer_get_id("Background");$(13_10)var back_id = layer_background_get_id(lay_id);$(13_10)layer_background_sprite(back_id, spr_level3floor);$(13_10)$(13_10)layer_background_sprite(back_id, spr_labfloor);$(13_10)$(13_10)layer_background_sprite(back_id, spr_background);$(13_10)*/"
if (room == Level_Menu){
	if (keyboard_check_pressed(vk_enter)){
		room_goto_next();
	}
}
/*
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, spr_level3floor);

layer_background_sprite(back_id, spr_labfloor);

layer_background_sprite(back_id, spr_background);
*//**/