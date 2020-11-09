/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08BD63FB
/// @DnDArgument : "code" "if (instance_place(x, y, obj_player)){$(13_10)	draw_text(x, y, "push down to talk")$(13_10)	if (obj_player.talking){$(13_10)		speechBubble(2);$(13_10)	}$(13_10)}"
if (instance_place(x, y, obj_player)){
	draw_text(x, y, "push down to talk")
	if (obj_player.talking){
		speechBubble(2);
	}
}