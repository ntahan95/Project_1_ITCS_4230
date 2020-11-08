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
		/// @DnDComment : Final boss' code, picks randomly out of everyhing
		/// @DnDParent : 4A11FC49
		/// @DnDArgument : "var" "next_move"
		if(next_move == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 40B20D79
			/// @DnDComment : Boss uses irandom_range to$(13_10)choose his next state
			/// @DnDParent : 5433821A
			/// @DnDArgument : "expr" "irandom_range(1, 2)"
			/// @DnDArgument : "var" "next_move"
			next_move = irandom_range(1, 2);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 7EEE4D74
			/// @DnDComment : changes state 3-5 seconds after idling
			/// @DnDParent : 5433821A
			/// @DnDArgument : "steps" "random_range(180, 300)"
			alarm_set(0, random_range(180, 300));
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FD1F5F8
		/// @DnDComment : Crab's code, always picks shoot
		/// @DnDDisabled : 1
		/// @DnDParent : 4A11FC49
		/// @DnDArgument : "var" "next_move"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38B5A0AE
		/// @DnDComment : Boss uses irandom_range to$(13_10)choose his next state
		/// @DnDDisabled : 1
		/// @DnDParent : 0FD1F5F8
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "next_move"
		
		
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 17584A46
		/// @DnDComment : changes state 3-5 seconds after idling
		/// @DnDDisabled : 1
		/// @DnDParent : 0FD1F5F8
		/// @DnDArgument : "steps" "random_range(180, 300)"
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

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67FDA342
	/// @DnDComment : Final boss will summon turrets during his fight
	/// @DnDParent : 09D3E254
	/// @DnDArgument : "var" "spawning"
	/// @DnDArgument : "value" "true"
	if(spawning == true)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 75CA0A0F
		/// @DnDParent : 67FDA342
		speed = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31C51D05
		/// @DnDParent : 67FDA342
		/// @DnDArgument : "var" "next_move"
		/// @DnDArgument : "not" "1"
		if(!(next_move == 0))
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 1E34BB2D
			/// @DnDParent : 31C51D05
			
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 43E3DFF8
				/// @DnDParent : 1E34BB2D
				/// @DnDArgument : "xpos" "random_range(x - 80, x + 80)"
				/// @DnDArgument : "ypos" "random_range(y, y - 100)"
				/// @DnDArgument : "objectid" "obj_turret"
				/// @DnDSaveInfo : "objectid" "obj_turret"
				instance_create_layer(random_range(x - 80, x + 80), random_range(y, y - 100), "Instances", obj_turret);
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1B3B1326
			/// @DnDParent : 31C51D05
			/// @DnDArgument : "var" "next_move"
			next_move = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 6E3E97E2
			/// @DnDParent : 31C51D05
			/// @DnDArgument : "steps" "120"
			alarm_set(0, 120);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62529105
	/// @DnDComment : Second boss will charge at you
	/// @DnDParent : 09D3E254
	/// @DnDArgument : "var" "charging"
	/// @DnDArgument : "value" "true"
	if(charging == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05ADAB56
		/// @DnDParent : 62529105
		/// @DnDArgument : "var" "charge_attack"
		/// @DnDArgument : "value" "false"
		if(charge_attack == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 363FEAF7
			/// @DnDParent : 05ADAB56
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "charge_attack"
			charge_attack = true;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 079682B3
			/// @DnDParent : 05ADAB56
			speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 1DC115BF
			/// @DnDParent : 05ADAB56
			/// @DnDArgument : "obj" "obj_player"
			/// @DnDSaveInfo : "obj" "obj_player"
			var l1DC115BF_0 = false;
			l1DC115BF_0 = instance_exists(obj_player);
			if(l1DC115BF_0)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
				/// @DnDVersion : 1
				/// @DnDHash : 79155C1C
				/// @DnDParent : 1DC115BF
				/// @DnDArgument : "x" "obj_player.x"
				/// @DnDArgument : "y" "y"
				direction = point_direction(x, y, obj_player.x, y);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 65F9EB49
				/// @DnDParent : 1DC115BF
				/// @DnDArgument : "var" "obj_player.x"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "x"
				if(obj_player.x < x)
				{
					/// @DnDAction : YoYo Games.Instances.Sprite_Scale
					/// @DnDVersion : 1
					/// @DnDHash : 40EA09E1
					/// @DnDParent : 65F9EB49
					/// @DnDArgument : "xscale" "-1"
					image_xscale = -1;
					image_yscale = 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 64F67FEE
				/// @DnDParent : 1DC115BF
				else
				{
					/// @DnDAction : YoYo Games.Instances.Sprite_Scale
					/// @DnDVersion : 1
					/// @DnDHash : 58C55537
					/// @DnDParent : 64F67FEE
					image_xscale = 1;
					image_yscale = 1;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 38049898
			/// @DnDParent : 05ADAB56
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-70"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_chargeAlert"
			/// @DnDSaveInfo : "objectid" "obj_chargeAlert"
			instance_create_layer(x + 0, y + -70, "Instances", obj_chargeAlert);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 578E73FF
			/// @DnDParent : 05ADAB56
			/// @DnDArgument : "var" "next_move"
			next_move = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 384E1C2B
			/// @DnDParent : 05ADAB56
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, 30);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 5835B681
			/// @DnDParent : 05ADAB56
			/// @DnDArgument : "steps" "random_range(210, 330)"
			alarm_set(0, random_range(210, 330));
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44A9DDE7
	/// @DnDParent : 09D3E254
	/// @DnDArgument : "var" "laser"
	/// @DnDArgument : "value" "true"
	if(laser == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F405A58
		/// @DnDParent : 44A9DDE7
		/// @DnDArgument : "var" "laser_fired"
		/// @DnDArgument : "value" "false"
		if(laser_fired == false)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 5D8D2330
			/// @DnDParent : 6F405A58
			/// @DnDArgument : "obj" "obj_player"
			/// @DnDSaveInfo : "obj" "obj_player"
			var l5D8D2330_0 = false;
			l5D8D2330_0 = instance_exists(obj_player);
			if(l5D8D2330_0)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 5D005ECB
				/// @DnDParent : 5D8D2330
				speed = 0;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7F576B23
				/// @DnDParent : 5D8D2330
				/// @DnDArgument : "var" "obj_player.x"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "x"
				if(obj_player.x < x)
				{
					/// @DnDAction : YoYo Games.Instances.Sprite_Scale
					/// @DnDVersion : 1
					/// @DnDHash : 3093C024
					/// @DnDParent : 7F576B23
					/// @DnDArgument : "xscale" "-1"
					image_xscale = -1;
					image_yscale = 1;
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 787E755A
					/// @DnDParent : 7F576B23
					/// @DnDArgument : "xpos" "-64"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_laserAlert"
					/// @DnDSaveInfo : "objectid" "obj_laserAlert"
					instance_create_layer(x + -64, y + 0, "Instances", obj_laserAlert);
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 43EA45FE
				/// @DnDParent : 5D8D2330
				else
				{
					/// @DnDAction : YoYo Games.Instances.Sprite_Scale
					/// @DnDVersion : 1
					/// @DnDHash : 154C0FBF
					/// @DnDParent : 43EA45FE
					image_xscale = 1;
					image_yscale = 1;
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 26573231
					/// @DnDParent : 43EA45FE
					/// @DnDArgument : "xpos" "64"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_laserAlert"
					/// @DnDSaveInfo : "objectid" "obj_laserAlert"
					instance_create_layer(x + 64, y + 0, "Instances", obj_laserAlert);
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0AE5BE09
				/// @DnDInput : 2
				/// @DnDParent : 5D8D2330
				/// @DnDArgument : "expr_1" "true"
				/// @DnDArgument : "var" "next_move"
				/// @DnDArgument : "var_1" "laser_fired"
				next_move = 0;
				laser_fired = true;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 04355324
				/// @DnDParent : 5D8D2330
				/// @DnDArgument : "steps" "160"
				alarm_set(0, 160);
			}
		}
	}
}