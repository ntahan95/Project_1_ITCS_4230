/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09D3E254
/// @DnDComment : State Machine activates after entering boss room
/// @DnDArgument : "var" "aggro"
/// @DnDArgument : "value" "true"
if(aggro == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A11FC49
	/// @DnDComment : Boss' default state,$(13_10)moves left and right
	/// @DnDParent : 09D3E254
	/// @DnDArgument : "var" "idling"
	/// @DnDArgument : "value" "true"
	if(idling == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45F67A28
		/// @DnDComment : checks to see if the boss is standing still$(13_10)or charging, resets his movement to the normal speed
		/// @DnDParent : 4A11FC49
		/// @DnDArgument : "var" "abs(hspeed)"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "hsp"
		if(!(abs(hspeed) == hsp))
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 18516A13
			/// @DnDParent : 45F67A28
			/// @DnDArgument : "obj" "obj_player"
			/// @DnDSaveInfo : "obj" "obj_player"
			var l18516A13_0 = false;
			l18516A13_0 = instance_exists(obj_player);
			if(l18516A13_0)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
				/// @DnDVersion : 1
				/// @DnDHash : 44667377
				/// @DnDParent : 18516A13
				/// @DnDArgument : "x" "obj_player.x"
				/// @DnDArgument : "y" "y"
				direction = point_direction(x, y, obj_player.x, y);
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 3DE97B13
				/// @DnDParent : 18516A13
				/// @DnDArgument : "speed" "hsp"
				speed = hsp;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2670C7DC
				/// @DnDParent : 18516A13
				/// @DnDArgument : "var" "hspeed"
				/// @DnDArgument : "op" "1"
				if(hspeed < 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 55B29EC6
					/// @DnDParent : 2670C7DC
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "var" "image_xscale"
					image_xscale = -1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 69B45689
				/// @DnDParent : 18516A13
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 28E36F95
					/// @DnDParent : 69B45689
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "var" "image_xscale"
					image_xscale = 1;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 18C7D81D
			/// @DnDParent : 45F67A28
			else
			{
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 1443899D
				/// @DnDParent : 18C7D81D
				/// @DnDArgument : "speed" "-hsp"
				/// @DnDArgument : "type" "1"
				hspeed = -hsp;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6D3A28D5
				/// @DnDParent : 18C7D81D
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "var" "image_xscale"
				image_xscale = -1;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5433821A
		/// @DnDDisabled : 1
		/// @DnDParent : 4A11FC49
		/// @DnDArgument : "var" "next_move"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40B20D79
		/// @DnDComment : Boss uses irandom_range to$(13_10)choose his next state
		/// @DnDDisabled : 1
		/// @DnDParent : 5433821A
		/// @DnDArgument : "expr" "irandom_range(1, 4)"
		/// @DnDArgument : "var" "next_move"
		
		
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7EEE4D74
		/// @DnDComment : changes state 3-5 seconds after idling
		/// @DnDDisabled : 1
		/// @DnDParent : 5433821A
		/// @DnDArgument : "steps" "random_range(180, 300)"
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FD1F5F8
		/// @DnDComment : test code, always picks shoot
		/// @DnDParent : 4A11FC49
		/// @DnDArgument : "var" "next_move"
		if(next_move == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 38B5A0AE
			/// @DnDComment : Boss uses irandom_range to$(13_10)choose his next state
			/// @DnDParent : 0FD1F5F8
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "next_move"
			next_move = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 17584A46
			/// @DnDComment : changes state 3-5 seconds after idling
			/// @DnDParent : 0FD1F5F8
			/// @DnDArgument : "steps" "random_range(180, 300)"
			alarm_set(0, random_range(180, 300));
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66852CA1
	/// @DnDParent : 09D3E254
	/// @DnDArgument : "var" "shooting"
	/// @DnDArgument : "value" "true"
	if(shooting == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 659DA863
		/// @DnDParent : 66852CA1
		/// @DnDArgument : "var" "hspeed"
		/// @DnDArgument : "not" "1"
		if(!(hspeed == 0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 1D2E738C
			/// @DnDParent : 659DA863
			speed = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19AE8D04
		/// @DnDParent : 66852CA1
		/// @DnDArgument : "var" "can_shoot"
		/// @DnDArgument : "value" "true"
		if(can_shoot == true)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5E4E7092
			/// @DnDParent : 19AE8D04
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_crabBossBullet"
			/// @DnDSaveInfo : "objectid" "obj_crabBossBullet"
			instance_create_layer(x + 0, y + 0, "Instances", obj_crabBossBullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 72766066
			/// @DnDParent : 19AE8D04
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_shoot"
			can_shoot = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 1B26AAB6
			/// @DnDParent : 19AE8D04
			/// @DnDArgument : "steps" "shoot_speed"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, shoot_speed);
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 0C2CEA21
		/// @DnDParent : 66852CA1
		/// @DnDArgument : "obj" "obj_player"
		/// @DnDSaveInfo : "obj" "obj_player"
		var l0C2CEA21_0 = false;
		l0C2CEA21_0 = instance_exists(obj_player);
		if(l0C2CEA21_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 495AAC7F
			/// @DnDParent : 0C2CEA21
			/// @DnDArgument : "var" "obj_player.x"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "x"
			if(obj_player.x < x)
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Scale
				/// @DnDVersion : 1
				/// @DnDHash : 0D7D1E53
				/// @DnDParent : 495AAC7F
				/// @DnDArgument : "xscale" "-1"
				image_xscale = -1;
				image_yscale = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0CFFEAE2
			/// @DnDParent : 0C2CEA21
			else
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Scale
				/// @DnDVersion : 1
				/// @DnDHash : 438F3CA2
				/// @DnDParent : 0CFFEAE2
				image_xscale = 1;
				image_yscale = 1;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1463BC07
		/// @DnDParent : 66852CA1
		/// @DnDArgument : "var" "next_move"
		/// @DnDArgument : "not" "1"
		if(!(next_move == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32CB8A3F
			/// @DnDParent : 1463BC07
			/// @DnDArgument : "var" "next_move"
			next_move = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 13FC7344
			/// @DnDParent : 1463BC07
			/// @DnDArgument : "steps" "random_range(300, 420)"
			alarm_set(0, random_range(300, 420));
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 357444DE
	/// @DnDParent : 09D3E254
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02B61C08
		/// @DnDParent : 357444DE
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "can_shoot"
		can_shoot = true;
	}
}