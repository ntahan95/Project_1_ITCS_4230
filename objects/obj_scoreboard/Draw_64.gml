/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1EEF5EF0
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l1EEF5EF0_0 = false;
l1EEF5EF0_0 = instance_exists(obj_player);
if(l1EEF5EF0_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 769FBF2C
	/// @DnDParent : 1EEF5EF0
	/// @DnDArgument : "x1" "8"
	/// @DnDArgument : "y1" "8"
	/// @DnDArgument : "x2" "256"
	/// @DnDArgument : "y2" "32"
	/// @DnDArgument : "value" "obj_player.hp"
	/// @DnDArgument : "backcol" "$FF000000"
	/// @DnDArgument : "barcol" "$FF000000"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF00FF00"
	draw_healthbar(8, 8, 256, 32, obj_player.hp, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 106D3A3F
	/// @DnDParent : 1EEF5EF0
	/// @DnDArgument : "code" "//checks and tells what gun the player currently has$(13_10)if (ds_list_empty(obj_player.gunInventory)){$(13_10)	draw_text(0, 0, string("no gun"));$(13_10)}$(13_10)else{$(13_10)draw_text(0, 0, string(obj_player.gunHeld));$(13_10)}"
	//checks and tells what gun the player currently has
	if (ds_list_empty(obj_player.gunInventory)){
		draw_text(0, 0, string("no gun"));
	}
	else{
	draw_text(0, 0, string(obj_player.gunHeld));
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 334E096E
	/// @DnDParent : 1EEF5EF0
	/// @DnDArgument : "var" "vc"
	/// @DnDArgument : "value" "view_camera[0]"
	var vc = view_camera[0];

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 151693FB
	/// @DnDParent : 1EEF5EF0
	/// @DnDArgument : "var" "cx"
	/// @DnDArgument : "value" "camera_get_view_x(vc)"
	var cx = camera_get_view_x(vc);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39E787C3
	/// @DnDParent : 1EEF5EF0
	/// @DnDArgument : "var" "cy"
	/// @DnDArgument : "value" "camera_get_view_y(vc)"
	var cy = camera_get_view_y(vc);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AC8624C
	/// @DnDParent : 1EEF5EF0
	/// @DnDArgument : "var" "cw"
	/// @DnDArgument : "value" "camera_get_view_width(vc)"
	var cw = camera_get_view_width(vc);
}