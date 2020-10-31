/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0F43DE2F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_block"
/// @DnDSaveInfo : "object" "obj_block"
var l0F43DE2F_0 = instance_place(x + 0, y + 1, obj_block);
if ((l0F43DE2F_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 254A1404
	/// @DnDParent : 0F43DE2F
	/// @DnDArgument : "speed" "jump_height"
	/// @DnDArgument : "type" "2"
	vspeed = jump_height;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 28EE972C
	/// @DnDParent : 0F43DE2F
	/// @DnDArgument : "force" "0"
	gravity = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 121C6463
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 02ED5A2A
	/// @DnDParent : 121C6463
	gravity = 1;
}