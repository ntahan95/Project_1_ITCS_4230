/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F221706
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "90"
if(direction > 90)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 721DEE2B
	/// @DnDParent : 6F221706
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "270"
	if(direction < 270)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C4D543A
		/// @DnDParent : 721DEE2B
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = -1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 76433424
	/// @DnDParent : 6F221706
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23C3FAED
		/// @DnDParent : 76433424
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3FCA8401
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 719E6366
	/// @DnDParent : 3FCA8401
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = 1;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7AEAA5D0
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l7AEAA5D0_0 = false;
l7AEAA5D0_0 = instance_exists(obj_player);
if(l7AEAA5D0_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02AF0373
	/// @DnDParent : 7AEAA5D0
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "obj_player.x - 10"
	if(x > obj_player.x - 10)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24801C01
		/// @DnDParent : 02AF0373
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "obj_player.x + 10"
		if(x < obj_player.x + 10)
		{
			/// @DnDAction : YoYo Games.Paths.Stop_Path
			/// @DnDVersion : 1
			/// @DnDHash : 2D923411
			/// @DnDParent : 24801C01
			path_end();
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 12EA646B
			/// @DnDParent : 24801C01
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_block"
			/// @DnDSaveInfo : "object" "obj_block"
			var l12EA646B_0 = instance_place(x + 0, y + 1, obj_block);
			if ((l12EA646B_0 > 0))
			{
				/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
				/// @DnDVersion : 1
				/// @DnDHash : 5B645F8F
				/// @DnDParent : 12EA646B
				/// @DnDArgument : "force" "0"
				gravity = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3CC1789D
			/// @DnDParent : 24801C01
			else
			{
				/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
				/// @DnDVersion : 1
				/// @DnDHash : 361DD5FA
				/// @DnDParent : 3CC1789D
				/// @DnDArgument : "force" ".5"
				gravity = .5;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 048B20D9
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "12"
if(vspeed > 12)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 637BDF3E
	/// @DnDParent : 048B20D9
	/// @DnDArgument : "expr" "12"
	/// @DnDArgument : "var" "vspeed"
	vspeed = 12;
}