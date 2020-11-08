/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 17AD0023
/// @DnDApplyTo : {obj_scoreboard}
/// @DnDArgument : "score" "+10"
/// @DnDArgument : "score_relative" "1"
with(obj_scoreboard) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(+10);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0665173C
/// @DnDArgument : "var" "drop_chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "max" "10"
var drop_chance = (random_range(0, 10));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D7575D1
/// @DnDArgument : "var" "drop_chance"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "4"
if(drop_chance >= 4)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6629C42B
	/// @DnDParent : 0D7575D1
	/// @DnDArgument : "var" "drop_chance"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "7"
	if(drop_chance < 7)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4F85FB69
		/// @DnDParent : 6629C42B
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_ammo"
		/// @DnDSaveInfo : "objectid" "obj_ammo"
		instance_create_layer(x + 0, y + 0, "Instances", obj_ammo);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5D16FEE6
	/// @DnDParent : 0D7575D1
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7E8CF5E8
		/// @DnDParent : 5D16FEE6
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_health"
		/// @DnDSaveInfo : "objectid" "obj_health"
		instance_create_layer(x + 0, y + 0, "Instances", obj_health);
	}
}