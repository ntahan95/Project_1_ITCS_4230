/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 602B870C
/// @DnDArgument : "x" "-move_speed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "object" "obj_block"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_block"
var l602B870C_0 = instance_place(x + -move_speed, 0, obj_block);
if (!(l602B870C_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 259FAE52
	/// @DnDParent : 602B870C
	/// @DnDArgument : "x" "-move_speed"
	/// @DnDArgument : "x_relative" "1"
	x += -move_speed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3496844F
	/// @DnDParent : 602B870C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = -1;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 6E63BB32
	/// @DnDParent : 602B870C
	/// @DnDArgument : "force" "0"
	gravity = 0;
}