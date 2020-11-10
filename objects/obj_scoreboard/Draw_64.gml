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

	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 30438C69
	/// @DnDParent : 1EEF5EF0
	/// @DnDArgument : "x" "15"
	/// @DnDArgument : "y" "50"
	/// @DnDArgument : "sprite" "spr_life"
	/// @DnDSaveInfo : "sprite" "spr_life"
	var l30438C69_0 = sprite_get_width(spr_life);
	var l30438C69_1 = 0;
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	for(var l30438C69_2 = __dnd_lives; l30438C69_2 > 0; --l30438C69_2) {
		draw_sprite(spr_life, 0, 15 + l30438C69_1, 50);
		l30438C69_1 += l30438C69_0;
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 106D3A3F
	/// @DnDParent : 1EEF5EF0
	/// @DnDArgument : "code" "//checks and tells what gun the player currently has$(13_10)/*$(13_10)if (ds_list_empty(obj_player.gunInventory)){$(13_10)	draw_text(0, 0, string("no gun"));$(13_10)}$(13_10)else{$(13_10)draw_text(0, 0, string(obj_player.gunHeld));$(13_10)}$(13_10)*/$(13_10)$(13_10)//placeholder ammo text$(13_10)$(13_10)draw_text(100, 50, string("Special Ammo:"))$(13_10)draw_text(225, 50, string(obj_player.ammo))"
	//checks and tells what gun the player currently has
	/*
	if (ds_list_empty(obj_player.gunInventory)){
		draw_text(0, 0, string("no gun"));
	}
	else{
	draw_text(0, 0, string(obj_player.gunHeld));
	}
	*/
	
	//placeholder ammo text
	
	draw_text(100, 50, string("Special Ammo:"))
	draw_text(225, 50, string(obj_player.ammo))/**/
}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 69CD6949
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 2D846633
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "70"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(8, 70, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E0DE62A
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
var vc = view_camera[0];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5425FCC2
/// @DnDArgument : "var" "cx"
/// @DnDArgument : "value" "camera_get_view_x(vc)"
var cx = camera_get_view_x(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 71C01C09
/// @DnDArgument : "var" "cy"
/// @DnDArgument : "value" "camera_get_view_y(vc)"
var cy = camera_get_view_y(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 20852D90
/// @DnDArgument : "var" "cw"
/// @DnDArgument : "value" "camera_get_view_width(vc)"
var cw = camera_get_view_width(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 26B75F69
/// @DnDArgument : "var" "ch"
/// @DnDArgument : "value" "camera_get_view_height(vc)"
var ch = camera_get_view_height(vc);

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 784DF8FE
/// @DnDArgument : "output" "go"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "game_over"
var go = global.game_over;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D6E3951
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "true"
if(go == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 574DBE9C
	/// @DnDParent : 3D6E3951
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3991F741
	/// @DnDParent : 3D6E3951
	/// @DnDArgument : "x" "cw / 2"
	/// @DnDArgument : "y" "ch / 2"
	/// @DnDArgument : "caption" ""Game Over! Press R to restart.""
	draw_text(cw / 2, ch / 2, string("Game Over! Press R to restart.") + "");
}