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
}