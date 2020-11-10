/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2EE93157
/// @DnDArgument : "soundid" "sound_enemyDeath"
/// @DnDSaveInfo : "soundid" "sound_enemyDeath"
audio_play_sound(sound_enemyDeath, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 6D0BA117
/// @DnDApplyTo : {obj_scoreboard}
/// @DnDArgument : "score" "+10"
/// @DnDArgument : "score_relative" "1"
with(obj_scoreboard) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(+10);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4B2C1F3D
/// @DnDArgument : "var" "drop_chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "max" "10"
var drop_chance = (random_range(0, 10));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49A21326
/// @DnDArgument : "var" "drop_chance"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "9.5"
if(drop_chance >= 9.5)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E51FC30
	/// @DnDParent : 49A21326
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_life"
	/// @DnDSaveInfo : "objectid" "obj_life"
	instance_create_layer(x + 0, y + 0, "Instances", obj_life);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0A30A7C0
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50BC1321
	/// @DnDParent : 0A30A7C0
	/// @DnDArgument : "var" "drop_chance"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "4"
	if(drop_chance >= 4)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22C79090
		/// @DnDParent : 50BC1321
		/// @DnDArgument : "var" "drop_chance"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "8"
		if(drop_chance < 8)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 044D5E8C
			/// @DnDParent : 22C79090
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_ammo"
			/// @DnDSaveInfo : "objectid" "obj_ammo"
			instance_create_layer(x + 0, y + 0, "Instances", obj_ammo);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 412EF029
		/// @DnDParent : 50BC1321
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4498EDF3
			/// @DnDParent : 412EF029
			/// @DnDArgument : "var" "drop_chance"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "9.5"
			if(drop_chance < 9.5)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 50FBB15E
				/// @DnDParent : 4498EDF3
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_health"
				/// @DnDSaveInfo : "objectid" "obj_health"
				instance_create_layer(x + 0, y + 0, "Instances", obj_health);
			}
		}
	}
}