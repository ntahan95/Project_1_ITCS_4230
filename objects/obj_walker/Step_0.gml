/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 519A5745
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l519A5745_0 = false;
l519A5745_0 = instance_exists(obj_player);
if(l519A5745_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C1D4F0E
	/// @DnDParent : 519A5745
	/// @DnDArgument : "var" "distance_to_object(obj_player)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "aggro_range"
	if(distance_to_object(obj_player) <= aggro_range)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3F99B30A
		/// @DnDParent : 6C1D4F0E
		/// @DnDArgument : "type" "1"
		hspeed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39842599
		/// @DnDParent : 6C1D4F0E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "aggro"
		aggro = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0229C8D4
	/// @DnDParent : 519A5745
	/// @DnDArgument : "var" "aggro"
	/// @DnDArgument : "value" "true"
	if(aggro == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D70ADAB
		/// @DnDParent : 0229C8D4
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "obj_player.x"
		if(x > obj_player.x)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1538EB3C
			/// @DnDParent : 5D70ADAB
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "face_left"
			face_left = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0A2A1D35
			/// @DnDParent : 5D70ADAB
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = -1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 285F7E3B
		/// @DnDParent : 0229C8D4
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 63D6B674
			/// @DnDParent : 285F7E3B
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70A3EC9D
			/// @DnDParent : 285F7E3B
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "face_left"
			face_left = false;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C67D76F
		/// @DnDParent : 0229C8D4
		/// @DnDArgument : "var" "can_shoot"
		/// @DnDArgument : "value" "true"
		if(can_shoot == true)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0EEAD891
			/// @DnDParent : 4C67D76F
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bulletWalker"
			/// @DnDSaveInfo : "objectid" "obj_bulletWalker"
			instance_create_layer(x + 0, y + 0, "Instances", obj_bulletWalker);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75C0CACA
			/// @DnDParent : 4C67D76F
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_shoot"
			can_shoot = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 07DD107C
			/// @DnDParent : 4C67D76F
			alarm_set(0, 30);
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7578377B
		/// @DnDParent : 0229C8D4
		/// @DnDArgument : "obj" "obj_player"
		/// @DnDSaveInfo : "obj" "obj_player"
		var l7578377B_0 = false;
		l7578377B_0 = instance_exists(obj_player);
		if(l7578377B_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0EF9C095
			/// @DnDParent : 7578377B
			/// @DnDArgument : "var" "distance_to_object(obj_player)"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "aggro_range + 100"
			if(distance_to_object(obj_player) > aggro_range + 100)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 145B05DD
				/// @DnDParent : 0EF9C095
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "aggro"
				aggro = false;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 440CFC0D
				/// @DnDParent : 0EF9C095
				/// @DnDArgument : "speed" "-hsp"
				/// @DnDArgument : "type" "1"
				hspeed = -hsp;
			}
		}
	}
}