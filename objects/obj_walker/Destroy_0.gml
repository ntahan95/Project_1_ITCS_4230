/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 664A5D68
/// @DnDApplyTo : {obj_scoreboard}
/// @DnDArgument : "score" "+20"
/// @DnDArgument : "score_relative" "1"
with(obj_scoreboard) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(+20);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 035C28CF
/// @DnDArgument : "var" "drop_chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "max" "10"
var drop_chance = (random_range(0, 10));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FB8D7CD
/// @DnDArgument : "var" "drop_chance"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "9.5"
if(drop_chance >= 9.5)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1909DFCB
	/// @DnDParent : 0FB8D7CD
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_life"
	/// @DnDSaveInfo : "objectid" "obj_life"
	instance_create_layer(x + 0, y + 0, "Instances", obj_life);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3E51C463
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11663DB1
	/// @DnDParent : 3E51C463
	/// @DnDArgument : "var" "drop_chance"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "4"
	if(drop_chance >= 4)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FFC9473
		/// @DnDParent : 11663DB1
		/// @DnDArgument : "var" "drop_chance"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "8"
		if(drop_chance < 8)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6D63C0F7
			/// @DnDParent : 4FFC9473
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_ammo"
			/// @DnDSaveInfo : "objectid" "obj_ammo"
			instance_create_layer(x + 0, y + 0, "Instances", obj_ammo);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 65FFEEA0
		/// @DnDParent : 11663DB1
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 22DDFE1F
			/// @DnDParent : 65FFEEA0
			/// @DnDArgument : "var" "drop_chance"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "9.5"
			if(drop_chance < 9.5)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 78F7E090
				/// @DnDParent : 22DDFE1F
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_health"
				/// @DnDSaveInfo : "objectid" "obj_health"
				instance_create_layer(x + 0, y + 0, "Instances", obj_health);
			}
		}
	}
}