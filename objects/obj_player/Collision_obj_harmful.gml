/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73A02CB3
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "false"
if(invincible == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D175EAC
	/// @DnDParent : 73A02CB3
	/// @DnDArgument : "expr" "-other.collision_damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hp"
	hp += -other.collision_damage;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23A3FA7D
	/// @DnDParent : 73A02CB3
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "invincible"
	invincible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5BBE3F57
	/// @DnDParent : 73A02CB3
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 30);
}