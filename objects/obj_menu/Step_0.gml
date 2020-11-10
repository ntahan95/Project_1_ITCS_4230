/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FF3B795
/// @DnDArgument : "code" "if (room == Level_Menu){$(13_10)	keyboard_check_pressed(vk_enter){$(13_10)		room_goto_next();$(13_10)	}$(13_10)}"
if (room == Level_Menu){
	keyboard_check_pressed(vk_enter){
		room_goto_next();
	}
}