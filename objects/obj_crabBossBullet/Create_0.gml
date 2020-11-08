/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 272C7286
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l272C7286_0 = false;
l272C7286_0 = instance_exists(obj_player);
if(l272C7286_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3300C734
	/// @DnDParent : 272C7286
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6F90AC23
	/// @DnDParent : 272C7286
	/// @DnDArgument : "speed" "8"
	speed = 8;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2E0ECF13
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 598B9DB6
	/// @DnDParent : 2E0ECF13
	/// @DnDArgument : "speed" "8"
	/// @DnDArgument : "type" "1"
	hspeed = 8;
}