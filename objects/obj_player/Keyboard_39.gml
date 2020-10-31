/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 633543B8
/// @DnDArgument : "x" "-move_speed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "object" "obj_block"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_block"
var l633543B8_0 = instance_place(x + -move_speed, 0, obj_block);
if (!(l633543B8_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 058705E6
	/// @DnDParent : 633543B8
	/// @DnDArgument : "x" "move_speed"
	/// @DnDArgument : "x_relative" "1"
	x += move_speed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33BAEA44
	/// @DnDParent : 633543B8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5647F9DF
	/// @DnDParent : 633543B8
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "face_left"
	face_left = true;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 03C0F71D
	/// @DnDParent : 633543B8
	/// @DnDArgument : "force" "0"
	gravity = 0;
}