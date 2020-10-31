/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4E43A454
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_block"
/// @DnDSaveInfo : "object" "obj_block"
var l4E43A454_0 = instance_place(x + 0, y + 1, obj_block);
if ((l4E43A454_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4540ED6E
	/// @DnDParent : 4E43A454
	/// @DnDArgument : "speed" "jump_height"
	/// @DnDArgument : "type" "2"
	vspeed = jump_height;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 63448A62
	/// @DnDParent : 4E43A454
	/// @DnDArgument : "force" "0"
	gravity = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 72ED52E0
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 13BC3485
	/// @DnDParent : 72ED52E0
	gravity = 1;
}