/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77D79AEC
/// @DnDArgument : "var" "obj_player.hp + 25"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "100"
if(obj_player.hp + 25 >= 100)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45CEEA31
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 77D79AEC
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "hp"
	with(obj_player) {
	hp = 100;
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2CF75590
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 780BD7A9
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 2CF75590
	/// @DnDArgument : "expr" "+25"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hp"
	with(obj_player) {
	hp += +25;
	
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6E7EAB2E
instance_destroy();