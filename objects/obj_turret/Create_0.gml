/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 13FE9C63
/// @DnDArgument : "obj" "obj_boss"
/// @DnDSaveInfo : "obj" "obj_boss"
var l13FE9C63_0 = false;
l13FE9C63_0 = instance_exists(obj_boss);
if(l13FE9C63_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AF93394
	/// @DnDParent : 13FE9C63
	/// @DnDArgument : "var" "obj_boss.aggro"
	/// @DnDArgument : "value" "true"
	if(obj_boss.aggro == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D2A761A
		/// @DnDParent : 3AF93394
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "aggro"
		aggro = true;
	}
}