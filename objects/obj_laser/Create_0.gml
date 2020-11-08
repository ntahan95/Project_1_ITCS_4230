/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3D5C6A4F
/// @DnDArgument : "obj" "obj_boss"
/// @DnDSaveInfo : "obj" "obj_boss"
var l3D5C6A4F_0 = false;
l3D5C6A4F_0 = instance_exists(obj_boss);
if(l3D5C6A4F_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C294E66
	/// @DnDParent : 3D5C6A4F
	/// @DnDArgument : "var" "obj_boss.x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "x"
	if(obj_boss.x <= x)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 48EA3956
		/// @DnDParent : 6C294E66
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 59CE965A
	/// @DnDParent : 3D5C6A4F
	/// @DnDArgument : "steps" "10"
	alarm_set(0, 10);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 071EBBFA
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1EB65A71
	/// @DnDParent : 071EBBFA
	instance_destroy();
}