/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 46C03B3B
/// @DnDArgument : "speed" "hspeed * -1"
/// @DnDArgument : "type" "1"
hspeed = hspeed * -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20417DC9
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "op" "1"
if(hspeed < 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D2FFBCE
	/// @DnDParent : 20417DC9
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "face_left"
	face_left = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B055721
	/// @DnDParent : 20417DC9
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0B38F5BC
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 759964DC
	/// @DnDParent : 0B38F5BC
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "face_left"
	face_left = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04F82834
	/// @DnDParent : 0B38F5BC
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = 1;
}