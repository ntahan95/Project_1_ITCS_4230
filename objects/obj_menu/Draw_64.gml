/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 722505AA
/// @DnDArgument : "code" "draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)image_angle += 1;$(13_10)draw_text_transformed(room_width / 2, room_height / 2, "Press Enter to start game", 2, 2, image_angle);$(13_10)"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
image_angle += 1;
draw_text_transformed(room_width / 2, room_height / 2, "Press Enter to start game", 2, 2, image_angle);