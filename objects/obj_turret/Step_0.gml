/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 544A4A33
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l544A4A33_0 = false;
l544A4A33_0 = instance_exists(obj_player);
if(l544A4A33_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D5FDDCB
	/// @DnDParent : 544A4A33
	/// @DnDArgument : "var" "distance_to_object(obj_player)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "aggro_range"
	if(distance_to_object(obj_player) <= aggro_range)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 245E6724
		/// @DnDParent : 4D5FDDCB
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "aggro"
		aggro = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A2CACDB
	/// @DnDParent : 544A4A33
	/// @DnDArgument : "var" "obj_boss.aggro"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(obj_boss.aggro == true))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 084E2669
		/// @DnDParent : 0A2CACDB
		/// @DnDArgument : "var" "distance_to_object(obj_player)"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "aggro_range"
		if(distance_to_object(obj_player) > aggro_range)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55E87CE3
			/// @DnDParent : 084E2669
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "aggro"
			aggro = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A5A9F9A
	/// @DnDParent : 544A4A33
	/// @DnDArgument : "var" "aggro"
	/// @DnDArgument : "value" "true"
	if(aggro == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1489376D
		/// @DnDParent : 7A5A9F9A
		/// @DnDArgument : "var" "can_shoot"
		/// @DnDArgument : "value" "true"
		if(can_shoot == true)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5DD2DA87
			/// @DnDParent : 1489376D
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_turretBullet"
			/// @DnDSaveInfo : "objectid" "obj_turretBullet"
			instance_create_layer(x + 0, y + 0, "Instances", obj_turretBullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1D1FD83F
			/// @DnDParent : 1489376D
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_shoot"
			can_shoot = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 55B93764
			/// @DnDParent : 1489376D
			/// @DnDArgument : "steps" "shoot_speed"
			alarm_set(0, shoot_speed);
		}
	}
}