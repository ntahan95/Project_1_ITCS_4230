/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3E798231
/// @DnDArgument : "speed" "hspeed * -1"
/// @DnDArgument : "type" "1"
hspeed = hspeed * -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6383DA3E
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "op" "1"
if(hspeed < 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76603EEC
	/// @DnDParent : 6383DA3E
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "face_left"
	face_left = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5674BE17
	/// @DnDParent : 6383DA3E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 247D0800
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49436127
	/// @DnDParent : 247D0800
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "face_left"
	face_left = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5ED3AB9E
	/// @DnDParent : 247D0800
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = 1;
}