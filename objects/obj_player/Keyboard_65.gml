/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4C5491C4
/// @DnDArgument : "x" "-move_speed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "object" "obj_block"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_block"
var l4C5491C4_0 = instance_place(x + -move_speed, 0, obj_block);
if (!(l4C5491C4_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1CD31881
	/// @DnDParent : 4C5491C4
	/// @DnDArgument : "x" "-move_speed"
	/// @DnDArgument : "x_relative" "1"
	x += -move_speed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29470026
	/// @DnDParent : 4C5491C4
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = -1;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 0A3AE11E
	/// @DnDParent : 4C5491C4
	/// @DnDArgument : "force" "0"
	gravity = 0;
}