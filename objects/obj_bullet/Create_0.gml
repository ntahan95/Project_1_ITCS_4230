/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17A1D908
/// @DnDArgument : "var" "obj_player.face_left"
/// @DnDArgument : "value" "true"
if(obj_player.face_left == true)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 18C12A73
	/// @DnDParent : 17A1D908
	/// @DnDArgument : "speed" "-7.5"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "1"
	hspeed += -7.5;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 52528BDA
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7FF8FBF6
	/// @DnDParent : 52528BDA
	/// @DnDArgument : "speed" "7.5"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "1"
	hspeed += 7.5;
}