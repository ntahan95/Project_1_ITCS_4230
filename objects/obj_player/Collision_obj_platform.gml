/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E614196
/// @DnDArgument : "var" "y +32"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "other.y"
if(y +32 < other.y)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 32479322
	/// @DnDParent : 4E614196
	/// @DnDArgument : "type" "2"
	vspeed = 0;
}