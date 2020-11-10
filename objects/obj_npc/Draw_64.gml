/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08BD63FB
/// @DnDArgument : "code" "if (instance_place(x, y, obj_player)){$(13_10)	draw_text(x, y, "Push down to talk")$(13_10)	if (obj_player.talking){$(13_10)		switch (room)$(13_10)		{$(13_10)			case Level_One:$(13_10)				speechBubble(1);$(13_10)				break;$(13_10)			case Level_Two:$(13_10)				speechBubble(2);$(13_10)				break;$(13_10)			case Level_Three:$(13_10)				speechBubble(3);$(13_10)				break;$(13_10)			case Level_Four:$(13_10)				speechBubble(4);$(13_10)				break;$(13_10)		}$(13_10)	}$(13_10)}"
if (instance_place(x, y, obj_player)){
	draw_text(x, y, "Push down to talk")
	if (obj_player.talking){
		switch (room)
		{
			case Level_One:
				speechBubble(1);
				break;
			case Level_Two:
				speechBubble(2);
				break;
			case Level_Three:
				speechBubble(3);
				break;
			case Level_Four:
				speechBubble(4);
				break;
		}
	}
}