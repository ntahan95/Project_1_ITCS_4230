/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A362254
/// @DnDArgument : "code" "instance_destroy(obj_flyer)$(13_10)instance_destroy(obj_walker)$(13_10)//turns on boss spawner for level 2$(13_10)instance_activate_object(obj_spawner1)"
instance_destroy(obj_flyer)
instance_destroy(obj_walker)
//turns on boss spawner for level 2
instance_activate_object(obj_spawner1)

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 532A6659
/// @DnDArgument : "x" "move_speed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_bossDoor"
/// @DnDSaveInfo : "object" "obj_bossDoor"
var l532A6659_0 = instance_place(x + move_speed, y + 0, obj_bossDoor);
if ((l532A6659_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5499DCCC
	/// @DnDParent : 532A6659
	/// @DnDArgument : "x" "other.x + 60"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x = other.x + 60;
	y += 0;

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 47044647
	/// @DnDParent : 532A6659
	/// @DnDArgument : "obj" "obj_boss"
	/// @DnDSaveInfo : "obj" "obj_boss"
	var l47044647_0 = false;
	l47044647_0 = instance_exists(obj_boss);
	if(l47044647_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C6F8B0C
		/// @DnDApplyTo : {obj_boss}
		/// @DnDParent : 47044647
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "aggro"
		with(obj_boss) {
		aggro = true;
		
		}
	}

	/// @DnDAction : YoYo Games.Cameras.Set_View_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4C6BF9BA
	/// @DnDParent : 532A6659
	/// @DnDArgument : "var" "1"
	/// @DnDArgument : "value" "false"
	view_set_visible(0, false);

	/// @DnDAction : YoYo Games.Cameras.Set_View_Var
	/// @DnDVersion : 1
	/// @DnDHash : 174326AC
	/// @DnDParent : 532A6659
	/// @DnDArgument : "var" "1"
	/// @DnDArgument : "view" "1"
	/// @DnDArgument : "value" "true"
	view_set_visible(1, true);
}